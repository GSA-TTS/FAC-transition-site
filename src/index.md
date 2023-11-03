---
layout: home.njk
title: The Federal Audit Clearinghouse
meta:
  name: The Federal Audit Clearinghouse
  description: The Federal Audit Clearinghouse is the home of the single audit process for the federal government awards system.
include_survey: true
---

<div class="usa-hero">
  <div class="grid-container">
    <h1 class="usa-hero__heading">
        The Federal Audit Clearinghouse (FAC) is the place to submit and review federal
        grant audits.
    </h1>
    <p class="intro-text">
        When an organization spends $750,000 or more in federal grant funds in a fiscal year, they are required to submit an audit. For more information on the features and development of the new FAC, check out our <a href=https://www.fac.gov/info/updates>Updates page</a>.
    </p>
     <ul class="usa-card-group flex-align-center flex-justify-left">
        <li class="usa-card desktop:grid-col-6">
            <div class="usa-card__container">
                <div>
                    <a class="usa-button sign-in-button"
                        aria-controls="login-modal"
                        href="https://app.fac.gov/openid/login/">Sign in</a>
                        <div class="usa-modal usa-modal--lg"
                     id="main-login-modal"
                     aria-labelledby="login-modal-heading"
                     aria-describedby="login-modal-description">
                    <div class="usa-modal__content">
                        <div class="usa-modal__main">
                            <h2 class="usa-modal__heading" id="login-modal-heading">You must log in to continue</h2>
                            <div id="login-modal-description">
                                <p>
                                    Submitting information to the Federal Audit Clearinghouse requires authentication
                                    which will now be handled by <a href="http://login.gov">Login.gov</a>.
                                    <strong>You cannot use your old Census FAC credentials to access the new GSA
                                        system.</strong> On the next screen you can use an existing Login.gov
                                        account or create a new one to securely sign in.
                                    </p>
                                </div>
                                <div class="usa-modal__footer">
                                    <ul class="usa-button-group">
                                        <li class="usa-button-group__item">
                                            <a href="https://app.fac.gov/openid/login/">
                                                <button type="button"
                                                        class="usa-button sign-in-button"
                                                        id="sign-in"
                                                        data-close-modal>Authenticate with Login.gov</button>
                                            </a>
                                        </li>
                                        <li class="usa-button-group__item">
                                            <button type="button"
                                                    class="usa-button usa-button--unstyled padding-105 text-center"
                                                    data-close-modal>Cancel</button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <button class="usa-button usa-modal__close"
                                    aria-label="Close this window"
                                    data-close-modal>
                                <svg class="usa-icon" aria-hidden="true" focusable="false" role="img">
                                  <img src="{{ config.baseUrl }}assets/img/usa-icons/close.svg" role="img" alt="Close" />
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>
                <p class="usa-card__body">Sign in to submit and review your audits.</p>
            </div>
        </li>
    </ul>
    <ul class="usa-card-group flex-align-center flex-justify-right">
        <li class="usa-card desktop:grid-col-6">
            <div class="usa-card__container">
                <div>
                    <a class="usa-button sign-in-button"
                        aria-controls="search-audits"
                        href="https://app.fac.gov/dissemination/search/">Search audit reports</a>
                        <div class="usa-modal__footer">
                                    <ul class="usa-button-group">
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <p class="usa-card__body">Search 2023 audits.
                Older reports are availbe <a href=https://facdissem.census.gov/>from the Census Bureau</a> through December 31, 2023.
                </p>
            </div>
        </li>
    </ul>
  </div>
</div>
