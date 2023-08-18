---
layout: home.njk
title: Obtaining a FAC API key
---

# {{title}}

The FAC API is proxied by [api.data.gov](https://api.data.gov/). You will need to [obtain a key from api.data.gov](https://api.data.gov/signup/) in order to access any APIs at fac.gov.

We recommend Federal users sign up for a key using a `.gov` or other government address.

## Handling your key

As an individual user, your API key should be treated like any other credential. For example:

* Do not share your key across multiple users
* Do not commit your key into a repository alongside your code
* Do not store your key in a shared drive where many users have access
* Do not attach your key to helpdesk requests or any other communication

Federal users developing systems that integrate with the FAC should treat the FAC API key like that for any other system (e.g. SAM.gov). At time of release, the FAC only holds public data; we will provide further guidance to integration partners as that changes.