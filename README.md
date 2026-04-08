# Federal Audit Clearinghouse Transition Site

This repo contains the static site for the Federal Audit Clearinghouse.

## Running locally

The site is built using [Eleventy](https://www.11ty.dev/), but all you need to get started running locally is `node` and `NPM`. After checking out the code in this repo, just:

```
npm install
```

to install the required dependencies. Then to run the site locally in development mode, just

```
npm run start
```

Access the site by visiting http://localhost:8080/. 

Finally, if you need to create a production build locally (perhaps for troubleshooting purposes), you can run

```
npm run build
```

## Using Docker

One way is the compose:

```
docker compose up --build
```

Or, to build the container:

```
docker build -t fac/11ty:latest .
```

To run the container on the local directory:

```
docker run -it -v ${PWD}/src:/app fac/11ty
```

## Development

### Naming scheme
File names are not yet consistent across the repository. However, when adding new files or updating old ones, use `kebab-case` rather than `snake_case`. The 11ty build process turns file names into URLs. Underscores in URLs is bad, so we use `kebab-case` universally.

In the case of user facing files or files shared in many places, such as `.xlsx` and `.pdf`, use `snake_case`. These are an exception.

### Folder structure
Before making any file changes, one should review the [Eleventy](https://www.11ty.dev/) documentation and understand the data cascade. This determines which files become viewable pages and what content is ultimately displayed.

A page file should be stored in `src/desired-url`. If there is more than one file necessary for a URL, use a folder with an index. Here are some examples:
1. `src/index.md` is the home page, `baseUrl`
2. `src/sample.md` becomes `baseUrl/sample`
3. `src/sample/index.md` also becomes `baseUrl/sample`
4. `src/sample/content.md` becomes `baseUrl/sample/content`
5. `src/sample/data.json` is data used elsewhere in the `sample` folder, and it does not become a new page

Page files should be in Markdown format. We want these to be clean and easy to edit for future maintenance. If more complicated content is required, layouts and components should be used. Layouts are stored in `src/_includes` and components are stored in `src/_includes/components`. For an example of a layout, see [layout.njk](https://github.com/GSA-TTS/FAC-transition-site/blob/main/src/_includes/layout.njk). For an example of a component, see [card.njk](https://github.com/GSA-TTS/FAC-transition-site/blob/main/src/_includes/components/card.njk). 

Data to be looped over by index, tag, or some other method of sorting, is stored in `src/_collections`. For example, updates are stored in `src/_collections/updates` and are looped over to be displayed in a list. 

Global data is stored in `src/_data`. Local data can be stored in the same folder as the relevant page files.

SCSS is stored in `assets/scss`. We should us USWDS classes where we can, but some situations require a more custom solution. 

Other files are stored in `assets`. Images are stored in `assets/img`. Other user facing files are stored in the own folders. For example, the `.xlsx` workbooks are stored in `assets/workbooks` and the Compliance Supplement `.pdf` files are stored in `assets/compliance`. 

```
FAC-transition-site
 ┣ assets
 ┃ ┣ img
 ┃ ┗ specific-files-for-users
 ┗ src
 ┃ ┣ _collections
 ┃ ┃ ┗ files-to-loop-over
 ┃ ┣ _data
 ┃ ┃ ┗ global-data-for-pages
 ┃ ┣ _includes
 ┃ ┃ ┗ components
 ┃ ┃ ┃ ┗ files-to-import-elsewhere
 ┃ ┃ ┗ layouts-for-pages.njk
 ┃ ┣ url-extension
 ┃ ┃ ┣ index.md
 ┃ ┃ ┗ page.md
 ┃ ┣ scss
 ┃ ┗ top-level-single-page.md
 ┗ project-level-files
```

### Package management

Required Node packages are defined in `package.json`. To update a package:

1. Check the recent releases for a package and determine the desired version
2. Verify the desired version does not include breaking changes or conficts with other packages
    * If there are breaking changes, resolve the errors after updating
    * If there are conflicts with other packages, consider updating them at the same time to maintain functionality
3. Update the version number in `package.json`.
4. Install the new version with `npm install package-name@version.number`. This will update `package-lock.json`
    * For example, `npm install @11ty/eleventy@3.0.0`
5. Resolve any expected errors from the update, such as Eleventy behavior or USWDS styling changes
6. Verify the site builds and serves correctly with `npm run start`
7. Commit _both_ `package.json` and `package-lock.json`

### Environment variables

Environment variables are pulled from a `.env` on startup. They are then added to a global `env` object. They can be accessed with `{{ env.VARIABLE_NAME }}` in templates and `process.env.VARIABLE_NAME` in JavaScript.

No environment variables are _required_ to run the site locally. Metabase access requires a base URL and the two relevant dashboard tokens. For example:

```.env
METABASE_HOST_URL="https://example.com/public/dashboard"
METABASE_TOKEN_DASHBOARDS="UUID"
METABASE_TOKEN_DATA_EXPLORER="UUID"
```

# Link checking

BLC seems to be a reasonable link checker. Install via

`npm install blc`

and run

```
blc --exclude "support.fac.gov" --exclude "close.svg" --recursive --follow <TARGET_URL>
```

This can be used against localhost as well as Federalist preview sites or the live site.

```
blc --exclude "support.fac.gov" --exclude "close.svg" --recursive --follow http://localhost:8080/
```

```
blc --exclude "support.fac.gov" --exclude "close.svg" --recursive --follow https://www.fac.gov/
```

The ZenDesk support link does not resolve well, and can be ignored. The `close.svg` icon is broken, and until it is fixed, it is good to ignore it in the link walk.
