import pandas as pd
import json
import zipfile
import os
import sys
import tempfile

def flatten_json_column(df, json_column='audit'):
    df[json_column] = df[json_column].apply(lambda x: json.loads(x) if pd.notna(x) else {})

    def flatten_nested_json(json_data, prefix=''):
        items = {}
        for key, value in json_data.items():
            new_key = f"{prefix}_{key}" if prefix else key
            if isinstance(value, dict):
                items.update(flatten_nested_json(value, new_key))
            elif isinstance(value, list):
                if value and isinstance(value[0], dict):
                    for i, item in enumerate(value):
                        items.update(flatten_nested_json(item, f"{new_key}_{i}"))
                else:
                    items[new_key] = str(value)
            else:
                items[new_key] = value
        return items

    flattened_data = df[json_column].apply(lambda x: flatten_nested_json(x))
    flattened_df = pd.DataFrame(flattened_data.tolist(), index=df.index)
    return pd.concat([df.drop(columns=[json_column]), flattened_df], axis=1)

def process_zip_of_csvs(zip_input_path, zip_output_path, json_column='audit'):
    with tempfile.TemporaryDirectory() as temp_dir:
        with zipfile.ZipFile(zip_input_path, 'r') as zip_ref:
            zip_ref.extractall(temp_dir)

        output_files = []

        for filename in os.listdir(temp_dir):
            if filename.endswith(".csv"):
                input_csv_path = os.path.join(temp_dir, filename)
                output_csv_path = os.path.join(temp_dir, f"flattened_{filename}")

                try:
                    df = pd.read_csv(input_csv_path)
                    result_df = flatten_json_column(df, json_column=json_column)
                    result_df.to_csv(output_csv_path, index=False)
                    output_files.append(output_csv_path)
                    print(f"✅ Flattened: {filename}")
                except Exception as e:
                    print(f"⚠️ Error processing {filename}: {e}")

        with zipfile.ZipFile(zip_output_path, 'w', zipfile.ZIP_DEFLATED) as out_zip:
            for file_path in output_files:
                out_zip.write(file_path, arcname=os.path.basename(file_path))

        print(f"\n🎉 All files flattened and zipped to: {zip_output_path}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python bulk_data_flatten_audit_json.py <input_zip> <output_zip>")
        sys.exit(1)

    zip_input = sys.argv[1]
    zip_output = sys.argv[2]

    process_zip_of_csvs(zip_input, zip_output)
