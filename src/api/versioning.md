---
layout: home.njk
title: FAC API versioning
meta:
  name: FAC API versioning
  description: Learn how the FAC manages versions of the FAC API.
eleventyComputed:
  eleventyNavigation:
    key: API versioning
    parent: API resources
in_page_nav: true
---

# FAC API versioning

This page describes how the FAC API will change over time, how those changes will be communicated, and how to understand the FAC APIs naming conventions. On October 1, 2023, these conventions will become operating procedure.

## API naming conventions

* Each release name contains a version in modified [SemVer](https://semver.org/) format: MAJOR, MINOR.
* Version numbers use underscores instead of dots so that our API names are valid Postgresql schema names.
* API names start with `api_` so we can distinguish them from other schemas during development.
* API names might end with a prerelease designation like `-beta`.

For example:

* `api_v1_0_0` - Indicates first frozen version, this is the default API pushed to users
* `api_v1_0_1` - Indicates a bug fix, these changes are automatically pushed to all users
* `api_v1_1_0` - Indicates the addition of a new feature, users may opt into using this version
* `api_v2_0_0` - Indicates new features have become the default version. All users will have to switch to this version and update their API access to avoid incompatability with older clients.

## Offering multiple API versions in parallel

The FAC API can provide multiple versions of the API at the same time using [PostgREST's schema](https://postgrest.org/en/stable/references/api/schemas.html) functionality. A full list of available schemas will be documented here as they become available.

While you can specify a particular schema when making a request, If you don't specify a particular API version in your request, the FAC API defaults to the most recent stable version. See the [PostgREST schema documenation](https://postgrest.org/en/stable/references/api/schemas.html#get-head) for guidance on specifying a version in your request.

For example, if the FAC API theoretically supported the versions `v1.1.0, v2.0.0, v3.0.0-beta`:

* `v2.0.0` is the most recent stable version. If you don’t specify a different API, you'll get `v2.0.0`.
* `v1.1.0` is the most recent release for the previous stable version. It is available, but you have to request it explicitly.
* `v1.0.0` is obsolete and is no longer available. `v1.1.0` is a more recent, MINOR update to `v1.0.0`.
* `v3.0.0-beta` is a prerelease for the next major, unreleased version. It is available, but you have to request it explicitly.

### Bugfixes and pre-releases

There may be some instances in which the most recent SemVer release is not the default for its MAJOR release. For example, we may opt to run a short test to confirm that a bug is fixed before making a particular release the default. This should be rare and is unlikely to impact regular API users.

You should not assume that a particular pre-release version will be available for any amount of time. They are intended primarily for testing and will likely rotate through the list of releases quickly.

## Migrating to new versions

Prior to a MAJOR release, we will publish a rough release timeline to help the community prepare for any breaking changes. Once an early prerelease version is ready, we will make an announcement and seek test volunteers from our user community.

When we're confident in a new version of the API, we will announce the new version as a non-default, opt-in version for more users. We'll also post when the new version will become the default (e.g. T+3 months). During this period, users can opt-in to using this new version to ensure their processes will still work before it becomes the default.

Once a new version becomes the default, we'll announce the date that the older version will be removed from service (e.g. T+12 months). Users will still be able to use the deprecated version by request until the removal date.

Our goal with this process is to ensure that users aren't rushed into migrating new versions and have ample time to prepare. At the same time, we can't commit to supporting old APIs indefinitely.

This process will apply to all changes to the API, both MAJOR and MINOR.
