---
tags: post 
date: "2000-01-01"
title: Template Title
description: Template description, some line items, various things
image_path: "assets/img/updates/an-image-name.png"
image_alt: Alt text that describes the image, for accessibility reasons. 
image_caption: Some caption content that goes below the image.
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
    e. Update the image fields, if you decide to include one. 
5. Upload an image, if necessary.
    a. Upload an image somewhere. The best folder is probably `assets -> img -> updates`.
    b. The `image_path` and `image_alt`fields _must_ be included in the frontmatter. The `image_caption` field is recommended, but not required. 
    c. The path is the file location. It looks like `"assets/img/updates/an-image-name.png"`. Include the quotes!
    d. The alt text is required for proper accessibility. It's a simple description of the image.
    e. The caption will display below the image in italics.
6. Write the page content!
    a. Remember, the title, short description, and date will already be included. No need to add another title.
    b. Follow a markdown guide like [this one](https://www.markdownguide.org/basic-syntax/) to get the basics down.
    c. You can add HTML directly to markdown, but be careful with spacing when doing so. 

Image specifications: 

Images have enforced sizes. If they are too far off the enforced sizes, they will stretch/shrink to fit.

The thumbnail displayed in the main collection has an enforced size of 80px by 60px. So a width-height ratio of 4:3 is recommended.

The image in the individual update page has a width of 320px. _The height is not enforced._ 

With these constraints in mind, the best image size is 320px by 240px. It is fine if the image is larger. It will likely shrink just fine on the main updates page, but be sure to check over the thumbnail on the collections page. 
