---
layout: home.njk
title: FAC API versioning
meta:
  name: FAC API versioning
  description: Learn how the FAC manages versions of the FAC API.
---

# FAC API versioning

This will become operating procedure on October 1, 2023. We will work with our user community on future revisions.

## API naming conventions

* We use MAJOR, MINOR, and PATCH conventions from [SemVer](https://semver.org/) to clearly signal what we’re doing.
* We use underscores instead of dots so that our API versions are valid Postgresql schema names.
* We prefix our API names with `api_` so we can distinguish them from other schemas during development.

### Examples

* `api_v1_0_0` - Indicates first frozen version, this is the default API pushed to users
* `api_v1_0_1` - Indicates a bug fix, these changes are automatically pushed to all users
* `api_v1_1_0` - Indicates the addition of a new feature, users may opt into using this version
* `api_v2_0_0` - Indicates new features have become the default version. All users will have to switch to this version and update their API access to avoid incompatability with older clients.

## Offering multiple API versions in parallel

We use the [PostgREST schema](https://postgrest.org/en/stable/references/api/schemas.html) functionality to offer multiple versions of the API in parallel. The order is significant; the first in the list is the default. For example, our configuration after a while might look like:

```
db-schemas = "api_v2_0_0, api_v1_1_0, api_v1_0_0, api_v3_0_0_beta"
```

This means:

* the default is `v2.0.0`; if you don’t specify a different API, you'll get `v2.0.0`
* `v1.1.0` is still available, but you have to explicitly specify it
* `v3.0.0-beta` is also available, but you have to opt into it because it isn't the default yet
* `v1.0.0` is no longer available

Use [a header](https://postgrest.org/en/stable/references/api/schemas.html#get-head) to select an API version other than the default.

## Migrating to new versions

We value feedback from our user community. Before we make new versions of the API the default, we'll ask for volunteers to opt in to testing these new versions.

When we're confident in a new version of the API, we will announce the new version as a non-default, opt-in version for more users. We'll also post when the new version will become the default (e.g. T+3 months). During this period, users can opt-in to using this new version to ensure their processes will still work before it becomes the default.

Once a new version becomes the default, we'll announce the date that the older version will be removed from service (e.g. T+12 months). Users will still be able to use the deprecated version by request until the removal date.

Our goal with this process is to ensure that users aren't rushed into migrating new versions and have ample time to prepare. At the same time, we can't commit to supporting old APIs indefinitely. 

This process will apply to all changes to the API, both MAJOR and MINOR.

## Fixing bugs

When we fix a bug, we copy the entire schema (including all of its views) and increment the PATCH. We then put that version _after_ the version that it is fixing. We do this _even if the bug we’re fixing is in a view definition and not visible to clients_. The reason is so that we can explicitly select that patched version in our tests, smoke tests, etc.

_Once the bug is confirmed fixed_, both via our own tests and any necessary confirmation from a user, then it’s OK to move the new version in front of the version that was fixed.

We should still announce bugfix releases!

# Cleaning up cruft in the codebase

It’s totally reasonable to remove schemas associated with fully-deprecated MAJOR versions from our codebase.

It’s totally reasonable to remove schemas associated with `-alpha` or `-beta` or `-rc` versions once the final version is available.


