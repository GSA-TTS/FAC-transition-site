---
tags: post 
date: "2000-01-01"
title: Template Title
description: Template description, some line items, various things
eleventyExcludeFromCollections: true
---

HOW TO USE THIS DOCUMENT:

1. Create a new markdown file in /src/_collections/updates.
    a. The name can be whatever you want, but the date of the update works well: "YYYY-MM-DD.md".
    b. Or, copy this file into the updates folder and rename it.
2. Copy the frontmatter from this document to the beginning of the new file.
    a. Frontmatter is everything between and including the three dashes from above.
3. REMOVE THE 'eleventyExcludeFromCollections' TAG. That's what makes this template invisible on the real site.
4. Update the frontmatter to your specifications.
    a. Leave `tags: post` alone. You can add more tags if you wish, like `tags: post, other_tag`. `post` is the important one.
    b. Update the date, in YYYY-MM-DD format. 
    c. Update the title. This is what displays on the roundup/search page, and at the top of the new page.
    d. Update the description. It's not required to have one, but it's nice to have.
5. Write the page content!
    a. Remember, the title, short description, and date will already be included. No need to add another title.
    b. Follow a markdown guide like [this one](https://www.markdownguide.org/basic-syntax/) to get the basics down.
    c. You can add HTML directly to markdown, but be careful with spacing when doing so. 
