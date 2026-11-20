// Reads the resubmission-linking CSV logs and groups records into chains.
// This is a bit like reconstructing the dictionaries created in Python when these files were first generated.
// It makes for easier parsing on the frontend, and is therefore more maintainable for our average static site user.
const fs = require("fs");
const path = require("path");

const DIR = path.join(__dirname, "curation", "resub_linking");

/*
 * I didn't want to download an external library to parse a few CSV files. If we want to do anything more complicated in the future,
 * I'd recommend doing that and then replacing the below snippet.
 * This snippet comes from https://stackoverflow.com/a/14991797.
 */
function parseCSV(str) {
  const arr = [];
  let quote = false; // 'true' means we're inside a quoted field

  // Iterate over each character, keep track of current row and column (of the returned array)
  for (let row = 0, col = 0, c = 0; c < str.length; c++) {
    let cc = str[c],
      nc = str[c + 1]; // Current character, next character
    arr[row] = arr[row] || []; // Create a new row if necessary
    arr[row][col] = arr[row][col] || ""; // Create a new column (start with empty string) if necessary

    // If the current character is a quotation mark, and we're inside a
    // quoted field, and the next character is also a quotation mark,
    // add a quotation mark to the current column and skip the next character
    if (cc == '"' && quote && nc == '"') {
      arr[row][col] += cc;
      ++c;
      continue;
    }

    // If it's just one quotation mark, begin/end quoted field
    if (cc == '"') {
      quote = !quote;
      continue;
    }

    // If it's a comma and we're not in a quoted field, move on to the next column
    if (cc == "," && !quote) {
      ++col;
      continue;
    }

    // If it's a newline (CRLF) and we're not in a quoted field, skip the next character
    // and move on to the next row and move to column 0 of that new row
    if (cc == "\r" && nc == "\n" && !quote) {
      ++row;
      col = 0;
      ++c;
      continue;
    }

    // If it's a newline (LF or CR) and we're not in a quoted field,
    // move on to the next row and move to column 0 of that new row
    if (cc == "\n" && !quote) {
      ++row;
      col = 0;
      continue;
    }
    if (cc == "\r" && !quote) {
      ++row;
      col = 0;
      continue;
    }

    // Otherwise, append the current character to the current column
    arr[row][col] += cc;
  }
  return arr;
}

module.exports = () => {
  const files = fs
    .readdirSync(DIR)
    .filter((f) => /^\d{4}.*\.csv$/i.test(f)) // Any CSV that starts with a four digit year. Used to omit the rollup.
    .sort();

  return files.map((file) => {
    const year = parseInt(file.slice(0, 4));
    const [header, ...rows] = parseCSV(
      fs.readFileSync(path.join(DIR, file), "utf8"),
    );

    const chains = new Map();
    for (const r of rows) {
      const rec = Object.fromEntries(header.map((h, i) => [h, r[i] || ""]));
      if (rec.skipped?.trim().toUpperCase() === "Y") continue; // Omit skipped chains.
      if (!chains.has(rec.chain_index)) chains.set(rec.chain_index, []);
      chains.get(rec.chain_index).push({
        ...rec,
        fac_accepted_date: rec.fac_accepted_date.split(" ")[0], // Removing the timestamp, keeping the date
        auditee_name: rec.auditee_name.toUpperCase(),
        auditee_state: rec.auditee_state.toUpperCase(),
      });
    }
    return {
      year,
      file,
      chainCount: chains.size,
      chains: [...chains.values()],
    };
  });
};
