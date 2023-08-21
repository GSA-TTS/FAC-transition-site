---
layout: home.njk
title: FAC API versioning
---

# {{title}}

*Last revised: 20230711*

This will become operating procedure on October 1, 2023. Subsequent revisions will be made in consultation with our user community.

## API naming conventions

* We use MAJOR, MINOR, and PATCH conventions from [SemVer](https://semver.org/) to clearly signal what we’re doing.
* We use underscores instead of dots so that our API versions are valid Postgresql schema names.
* We prefix our API names with `api_` so that it’s easy to distinguish them from other schemas we might work with during development.

### Examples

* `api_v1_0_0` - First frozen version
* `api_v1_0_1` - Fixes a bug
* `api_v1_1_0` - Adds a new feature
* `api_v2_0_0` - Breaks compatibility with older clients

## Offering multiple API versions in parallel

We use the [PostgREST schema](https://postgrest.org/en/stable/references/api/schemas.html) functionality to offer multiple versions of the API in parallel. The order is significant; the first in the list is the default. For example, our configuration after a while might look like:

```
db-schemas = "api_v2_0_0, api_v1_1_0, api_v1_0_0, api_v3_0_0_beta"
```

This means:

* the default is `v2.0.0`, and if you don’t specify, that’s what you get
* `v1.1.0` is still available, but you have to explicitly specify it
* `v3.0.0-beta` is also available, but you have to opt into it
* `v1.0.0` is no longer available (because it’s not in the list, and presumably we removed that schema altogether)

## How clients explicitly select the API version

[They use headers.](https://postgrest.org/en/stable/references/api/schemas.html#get-head)

## Migrating to new versions

Say we’re getting ready to make `v2` available, and we want feedback from early testers. We make `api_v2_0_0_alpha`, `api_v2_0_0_beta` etc. available on an opt-in basis for volunteers as we make changes. Volunteers would opt in to using those newer API versions.

Once we are confident in our release, we would announce `api_v2_0_0` as a non-default, opt-in version, along with much fanfare and a date for when it will become the default (e.g. T+3 months). During that period, people can opt-in to using `v2` in order to verify that their stuff will continue to work once `v2` becomes the default.

After the `v2` date passes, `v2` will be the default unless people explicitly "opt-out" by specifying that they still want to use `v1`. We would also explicitly announce that `v1` is deprecated, and the date after which it may be removed (eg T+12 months). This is to ensure that:

* We don’t rush people into migrating versions… They have 15 months end-to-end.
* We don’t commit to supporting older APIs forever. We may need to remove one if we have to enable us to do particularly invasive surgery on the underlying tables, for instance. 

The same process would apply for MINOR increments.

## Fixing bugs

When we fix a bug, we copy the entire schema (including all of its views) and increment the PATCH. We then put that version _after_ the version that it is fixing. We do this _even if the bug we’re fixing is in a view definition and not visible to clients_. The reason is so that we can explicitly select that patched version in our tests, smoke tests, etc.

_Once the bug is confirmed fixed_, both via our own tests and any necessary confirmation from a user, then it’s OK to move the new version in front of the version that was fixed.

We should still announce bugfix releases!

# Cleaning up cruft in the codebase

It’s totally reasonable to remove schemas associated with fully-deprecated MAJOR versions from our codebase.

It’s totally reasonable to remove schemas associated with `-alpha` or `-beta` or `-rc` versions once the final version is available.


