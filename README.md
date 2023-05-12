# Federal Audit Clearinghouse Transition Site

This repo contains a transition site for the Federal Audit Clearinghouse.

## Running locally

The site is built using [Eleventy](https://www.11ty.dev/), but all you need to get started running locally is `node` and `NPM`. After checking out the code in this repo, just:

```
npm install
```

to install the required dependencies. Then to run the site locally in development mode, just

```
npm run start
```

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