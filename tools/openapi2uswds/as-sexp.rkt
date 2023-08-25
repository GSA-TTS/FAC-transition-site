'#hasheq((basePath . "/")
         (consumes
          .
          ("application/json" "application/vnd.pgrst.object+json" "text/csv"))
         (definitions
          .
          #hasheq((vw_auditee
                   .
                   #hasheq((description
                            .
                            "Information about the entity undergoing the audit")
                           (properties
                            .
                            #hasheq((auditee_certify_name
                                     .
                                     #hasheq((description
                                              .
                                              "Name of Auditee Certifying Official   Data sources: SF-SAC 1997-2000: I/6/g; SF-SAC 2001-2003: I/6/g; SF-SAC 2004-2007: I/6/g; SF-SAC 2008-2009: I/5/g; SF-SAC 2010-2012: I/5/g; SF-SAC 2013-2015: certifications; SF-SAC 2016-2018: certifications; SF-SAC 2019-2021: certifications; SF-SAC 2022: certifications Census mapping: GENERAL, AUDITEECERTIFYNAME")
                                             (format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (auditee_certify_title
                                     .
                                     #hasheq((description
                                              .
                                              "Title of Auditee Certifying Official   Data sources: SF-SAC 1997-2000: I/6/g; SF-SAC 2001-2003: I/6/g; SF-SAC 2004-2007: I/6/g; SF-SAC 2008-2009: I/5/g; SF-SAC 2010-2012: I/5/g; SF-SAC 2013-2015: certifications; SF-SAC 2016-2018: certifications; SF-SAC 2019-2021: certifications; SF-SAC 2022: certifications Census mapping: GENERAL, AUDITEECERTIFYTITLE")
                                             (format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (auditee_city
                                     .
                                     #hasheq((description
                                              .
                                              "Auditee City   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, CITY")
                                             (format . "character varying")
                                             (maxLength . 30)
                                             (type . "string")))
                                    (auditee_contact
                                     .
                                     #hasheq((description
                                              .
                                              "Name of Auditee Contact   Data sources: SF-SAC 1997-2000: I/6/c; SF-SAC 2001-2003: I/6/c; SF-SAC 2004-2007: I/6/c; SF-SAC 2008-2009: I/5/c; SF-SAC 2010-2012: I/5/c; SF-SAC 2013-2015: I/5/c; SF-SAC 2016-2018: I/5/c; SF-SAC 2019-2021: I/5/c; SF-SAC 2022: I/5/c Census mapping: GENERAL, AUDITEECONTACT")
                                             (format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (auditee_email
                                     .
                                     #hasheq((description
                                              .
                                              "Auditee Email address   Data sources: SF-SAC 1997-2000: I/6/f; SF-SAC 2001-2003: I/6/f; SF-SAC 2004-2007: I/6/f; SF-SAC 2008-2009: I/5/f; SF-SAC 2010-2012: I/5/f; SF-SAC 2013-2015: I/5/f; SF-SAC 2016-2018: I/5/e; SF-SAC 2019-2021: I/5/e; SF-SAC 2022: I/5/e Census mapping: GENERAL, AUDITEEEMAIL")
                                             (format . "character varying")
                                             (maxLength . 60)
                                             (type . "string")))
                                    (auditee_fax
                                     .
                                     #hasheq((description
                                              .
                                              "Auditee Fax Number (optional)   Data sources: SF-SAC 1997-2000: I/6/e; SF-SAC 2001-2003: I/6/e; SF-SAC 2004-2007: I/6/e; SF-SAC 2008-2009: I/5/e; SF-SAC 2010-2012: I/5/e; SF-SAC 2013-2015: I/5/e Census mapping: GENERAL, AUDITEEFAX")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (auditee_name
                                     .
                                     #hasheq((description
                                              .
                                              "Name of the Auditee   Data sources: SF-SAC 1997-2000: I/6/a; SF-SAC 2001-2003: I/6/a; SF-SAC 2004-2007: I/6/a; SF-SAC 2008-2009: I/5/a; SF-SAC 2010-2012: I/5/a; SF-SAC 2013-2015: I/5/a; SF-SAC 2016-2018: I/5/a; SF-SAC 2019-2021: I/5/a; SF-SAC 2022: I/5/a Census mapping: GENERAL, AUDITEENAME")
                                             (format . "character varying")
                                             (maxLength . 70)
                                             (type . "string")))
                                    (auditee_name_title
                                     .
                                     #hasheq((description
                                              .
                                              "Title of Auditee Certifying Official   Data sources: SF-SAC 1997-2000: I/6/g; SF-SAC 2001-2003: I/6/g; SF-SAC 2004-2007: I/6/g; SF-SAC 2008-2009: I/5/g; SF-SAC 2010-2012: I/5/g; SF-SAC 2013-2015: certifications; SF-SAC 2016-2018: certifications; SF-SAC 2019-2021: certifications; SF-SAC 2022: certifications Census mapping: GENERAL, AUDITEENAMETITLE")
                                             (format . "character varying")
                                             (maxLength . 70)
                                             (type . "string")))
                                    (auditee_phone
                                     .
                                     #hasheq((description
                                              .
                                              "Auditee Phone Number   Data sources: SF-SAC 1997-2000: I/6/d; SF-SAC 2001-2003: I/6/d; SF-SAC 2004-2007: I/6/d; SF-SAC 2008-2009: I/5/d; SF-SAC 2010-2012: I/5/d; SF-SAC 2013-2015: I/5/d; SF-SAC 2016-2018: I/5/d; SF-SAC 2019-2021: I/5/d; SF-SAC 2022: I/5/d Census mapping: GENERAL, AUDITEEPHONE")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (auditee_state
                                     .
                                     #hasheq((description
                                              .
                                              "Auditee State   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, STATE")
                                             (format . "character varying")
                                             (maxLength . 2)
                                             (type . "string")))
                                    (auditee_street1
                                     .
                                     #hasheq((description
                                              .
                                              "Auditee Street Address   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, STREET1")
                                             (format . "character varying")
                                             (maxLength . 45)
                                             (type . "string")))
                                    (auditee_street2
                                     .
                                     #hasheq((description
                                              .
                                              "Auditee Street Address   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, STREET2")
                                             (format . "character varying")
                                             (maxLength . 45)
                                             (type . "string")))
                                    (auditee_title
                                     .
                                     #hasheq((description
                                              .
                                              "Title of Auditee Contact   Data sources: SF-SAC 1997-2000: I/6/c; SF-SAC 2001-2003: I/6/c; SF-SAC 2004-2007: I/6/c; SF-SAC 2008-2009: I/5/c; SF-SAC 2010-2012: I/5/c; SF-SAC 2013-2015: I/5/c; SF-SAC 2016-2018: I/5/c; SF-SAC 2019-2021: I/5/c; SF-SAC 2022: I/5/c Census mapping: GENERAL, AUDITEETITLE")
                                             (format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (auditee_zip_code
                                     .
                                     #hasheq((description
                                              .
                                              "Auditee Zip Code   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, ZIPCODE")
                                             (format . "character varying")
                                             (maxLength . 12)
                                             (type . "string")))
                                    (dbkey
                                     .
                                     #hasheq((format . "character varying[]")
                                             (items
                                              .
                                              #hasheq((type . "string")))
                                             (type . "array")))
                                    (duns_list
                                     .
                                     #hasheq((description . "duns list   ")
                                             (format . "integer[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (ein_list
                                     .
                                     #hasheq((description . "ein list   ")
                                             (format . "integer[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (ein_subcode
                                     .
                                     #hasheq((description
                                              .
                                              "Subcode assigned to the EIN.   Census mapping: GENERAL, EINSUBCODE")
                                             (format . "integer")
                                             (type . "integer")))
                                    (general_id
                                     .
                                     #hasheq((format . "bigint[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "ID   \n\nNote:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (is_public
                                     .
                                     #hasheq((description
                                              .
                                              "True if appears in a public record   ")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (uei_list
                                     .
                                     #hasheq((description . "uei list   ")
                                             (format . "character varying[]")
                                             (items
                                              .
                                              #hasheq((type . "string")))
                                             (type . "array")))))
                           (type . "object")))
                  (vw_auditor
                   .
                   #hasheq((description
                            .
                            "Information about the Auditing CPA firm conducting the audit")
                           (properties
                            .
                            #hasheq((cpa_city
                                     .
                                     #hasheq((description
                                              .
                                              "CPA City   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPACITY (AND) Data sources: SF-SAC 2008-2009: I/8/b; SF-SAC 2010-2012: I/8/b; SF-SAC 2013-2015: I/8/d; SF-SAC 2016-2018: I/8/d; SF-SAC 2019-2021: I/6/h/iv; SF-SAC 2022: I/6/h/iv Census mapping: MULTIPLE CPAS INFO, CPACITY")
                                             (format . "character varying")
                                             (maxLength . 30)
                                             (type . "string")))
                                    (cpa_contact
                                     .
                                     #hasheq((description
                                              .
                                              "Name of CPA Contact   Data sources: SF-SAC 1997-2000: I/7/c; SF-SAC 2001-2003: I/7/c; SF-SAC 2004-2007: I/7/c; SF-SAC 2008-2009: I/6/c; SF-SAC 2010-2012: I/6/c; SF-SAC 2013-2015: I/6/d; SF-SAC 2016-2018: I/6/d; SF-SAC 2019-2021: I/6/d; SF-SAC 2022: I/6/d Census mapping: GENERAL, CPACONTACT (AND) Data sources: SF-SAC 2008-2009: I/8/c; SF-SAC 2010-2012: I/8/c; SF-SAC 2013-2015: I/8/g; SF-SAC 2016-2018: I/8/g; SF-SAC 2019-2021: I/6/h/vii; SF-SAC 2022: I/6/h/vii Census mapping: MULTIPLE CPAS INFO, CPACONTACT")
                                             (format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (cpa_country
                                     .
                                     #hasheq((description
                                              .
                                              "CPA Country   Data sources: SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPACOUNTRY")
                                             (format . "character varying")
                                             (maxLength . 6)
                                             (type . "string")))
                                    (cpa_ein
                                     .
                                     #hasheq((description
                                              .
                                              "CPA Firm EIN (only available for audit years 2013 and beyond)   Data sources: SF-SAC 2013-2015: I/6/b; SF-SAC 2016-2018: I/6/b; SF-SAC 2019-2021: I/6/b; SF-SAC 2022: I/6/b Census mapping: GENERAL, AUDITOR_EIN (AND) Data sources: SF-SAC 2013-2015: I/8/b; SF-SAC 2016-2018: I/8/b; SF-SAC 2019-2021: I/6/h/ii; SF-SAC 2022: I/6/h/ii Census mapping: MULTIPLE CPAS INFO, CPAEIN")
                                             (format . "integer")
                                             (type . "integer")))
                                    (cpa_email
                                     .
                                     #hasheq((description
                                              .
                                              "CPA mail address (optional)   Data sources: SF-SAC 1997-2000: I/7/f; SF-SAC 2001-2003: I/7/f; SF-SAC 2004-2007: I/7/f; SF-SAC 2008-2009: I/6/f; SF-SAC 2010-2012: I/6/f; SF-SAC 2013-2015: I/6/g; SF-SAC 2016-2018: I/6/f; SF-SAC 2019-2021: I/6/f; SF-SAC 2022: I/6/f Census mapping: GENERAL, CPAEMAIL (AND) Data sources: SF-SAC 2008-2009: I/8/f; SF-SAC 2010-2012: I/8/f; SF-SAC 2013-2015: I/8/k; SF-SAC 2016-2018: I/8/k; SF-SAC 2019-2021: I/6/h/x; SF-SAC 2022: I/6/h/x Census mapping: MULTIPLE CPAS INFO, CPAEMAIL")
                                             (format . "character varying")
                                             (maxLength . 60)
                                             (type . "string")))
                                    (cpa_fax
                                     .
                                     #hasheq((description
                                              .
                                              "CPA fax number (optional)   Data sources: SF-SAC 1997-2000: I/7/e; SF-SAC 2001-2003: I/7/e; SF-SAC 2004-2007: I/7/e; SF-SAC 2008-2009: I/6/e; SF-SAC 2010-2012: I/6/e; SF-SAC 2013-2015: I/6/f Census mapping: GENERAL, CPAFAX (AND) Data sources: SF-SAC 2008-2009: I/8/e; SF-SAC 2010-2012: I/8/e; SF-SAC 2013-2015: I/8/j; SF-SAC 2016-2018: I/8/j Census mapping: MULTIPLE CPAS INFO, CPAFAX")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (cpa_firm_name
                                     .
                                     #hasheq((description
                                              .
                                              "CPA Firm Name   Data sources: SF-SAC 1997-2000: I/7/a; SF-SAC 2001-2003: I/7/a; SF-SAC 2004-2007: I/7/a; SF-SAC 2008-2009: I/6/a; SF-SAC 2010-2012: I/6/a; SF-SAC 2013-2015: I/6/a; SF-SAC 2016-2018: I/6/a; SF-SAC 2019-2021: I/6/a; SF-SAC 2022: I/6/a Census mapping: GENERAL, CPAFIRMNAME (AND) Data sources: SF-SAC 2008-2009: I/8/a; SF-SAC 2010-2012: I/8/a; SF-SAC 2013-2015: I/8/a; SF-SAC 2016-2018: I/8/a; SF-SAC 2019-2021: I/6/h/i; SF-SAC 2022: I/6/h/i Census mapping: MULTIPLE CPAS INFO, CPAFIRMNAME")
                                             (format . "character varying")
                                             (maxLength . 64)
                                             (type . "string")))
                                    (cpa_foreign
                                     .
                                     #hasheq((description
                                              .
                                              "CPA Address - if international   Data sources: SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPAFOREIGN")
                                             (format . "character varying")
                                             (maxLength . 200)
                                             (type . "string")))
                                    (cpa_phone
                                     .
                                     #hasheq((description
                                              .
                                              "CPA phone number   Data sources: SF-SAC 1997-2000: I/7/d; SF-SAC 2001-2003: I/7/d; SF-SAC 2004-2007: I/7/d; SF-SAC 2008-2009: I/6/d; SF-SAC 2010-2012: I/6/d; SF-SAC 2013-2015: I/6/e; SF-SAC 2016-2018: I/6/e; SF-SAC 2019-2021: I/6/e; SF-SAC 2022: I/6/e Census mapping: GENERAL, CPAPHONE (AND) Data sources: SF-SAC 2008-2009: I/8/d; SF-SAC 2010-2012: I/8/d; SF-SAC 2013-2015: I/8/i; SF-SAC 2016-2018: I/8/i; SF-SAC 2019-2021: I/6/h/ix; SF-SAC 2022: I/6/h/ix Census mapping: MULTIPLE CPAS INFO, CPAPHONE")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (cpa_state
                                     .
                                     #hasheq((description
                                              .
                                              "CPA State   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPASTATE (AND) Data sources: SF-SAC 2008-2009: I/8/b; SF-SAC 2010-2012: I/8/b; SF-SAC 2013-2015: I/8/e; SF-SAC 2016-2018: I/8/e; SF-SAC 2019-2021: I/6/h/v; SF-SAC 2022: I/6/h/v Census mapping: MULTIPLE CPAS INFO, CPASTATE")
                                             (format . "character varying")
                                             (maxLength . 2)
                                             (type . "string")))
                                    (cpa_street1
                                     .
                                     #hasheq((description
                                              .
                                              "CPA Street Address   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPASTREET1 (AND) Data sources: SF-SAC 2008-2009: I/8/b; SF-SAC 2010-2012: I/8/b; SF-SAC 2013-2015: I/8/c; SF-SAC 2016-2018: I/8/c; SF-SAC 2019-2021: I/6/h/iii; SF-SAC 2022: I/6/h/iii Census mapping: MULTIPLE CPAS INFO, CPASTREET1")
                                             (format . "character varying")
                                             (maxLength . 45)
                                             (type . "string")))
                                    (cpa_street2
                                     .
                                     #hasheq((description
                                              .
                                              "CPA Street Address, line 2   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPASTREET2")
                                             (format . "character varying")
                                             (maxLength . 45)
                                             (type . "string")))
                                    (cpa_title
                                     .
                                     #hasheq((description
                                              .
                                              "Title of CPA Contact   Data sources: SF-SAC 1997-2000: I/7/c; SF-SAC 2001-2003: I/7/c; SF-SAC 2004-2007: I/7/c; SF-SAC 2008-2009: I/6/c; SF-SAC 2010-2012: I/6/c; SF-SAC 2013-2015: I/6/d; SF-SAC 2016-2018: I/6/d; SF-SAC 2019-2021: I/6/d; SF-SAC 2022: I/6/d Census mapping: GENERAL, CPATITLE (AND) Data sources: SF-SAC 2008-2009: I/8/c; SF-SAC 2010-2012: I/8/c; SF-SAC 2013-2015: I/8/h; SF-SAC 2016-2018: I/8/h; SF-SAC 2019-2021: I/6/h/viii; SF-SAC 2022: I/6/h/viii Census mapping: MULTIPLE CPAS INFO, CPATITLE")
                                             (format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (cpa_zip_code
                                     .
                                     #hasheq((description
                                              .
                                              "CPA Zip Code   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPAZIPCODE (AND) Data sources: SF-SAC 2008-2009: I/8/b; SF-SAC 2010-2012: I/8/b; SF-SAC 2013-2015: I/8/f; SF-SAC 2016-2018: I/8/f; SF-SAC 2019-2021: I/6/h/vi; SF-SAC 2022: I/6/h/vi Census mapping: MULTIPLE CPAS INFO, CPAZIPCODE")
                                             (format . "character varying")
                                             (maxLength . 12)
                                             (type . "string")))
                                    (general_id
                                     .
                                     #hasheq((format . "bigint[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "ID   \n\nNote:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (is_public
                                     .
                                     #hasheq((description
                                              .
                                              "True if appears in a public record   ")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (secondary_auditor_general_id
                                     .
                                     #hasheq((format . "bigint[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (sequence_number
                                     .
                                     #hasheq((description
                                              .
                                              "Order that Auditors were reported on page 5 of SF-SAC (only for secondary_auditors)   Census mapping: GENERAL, SEQNUM (AND) Census mapping: MULTIPLE CPAS INFO, SEQNUM")
                                             (format . "integer")
                                             (type . "integer")))))
                           (type . "object")))
                  (vw_cap_text
                   .
                   #hasheq((properties
                            .
                            #hasheq((audit_year
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (auditee_ein
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (auditee_uei
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (cap_text
                                     .
                                     #hasheq((format . "text")
                                             (type . "string")))
                                    (charts_tables
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (finding_ref_number
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 100)
                                             (type . "string")))
                                    (fy_end_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (fy_start_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "Note:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (report_id
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))))
                           (type . "object")))
                  (vw_federal_award
                   .
                   #hasheq((properties
                            .
                            #hasheq((additional_award_identification
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (amount_expended
                                     .
                                     #hasheq((format . "bigint")
                                             (type . "integer")))
                                    (audit_year
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (auditee_ein
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (auditee_uei
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (award_seq_number
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (cluster_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 75)
                                             (type . "string")))
                                    (cluster_total
                                     .
                                     #hasheq((format . "bigint")
                                             (type . "integer")))
                                    (federal_agency_prefix
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 2)
                                             (type . "string")))
                                    (federal_award_extension
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 3)
                                             (type . "string")))
                                    (federal_program_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 300)
                                             (type . "string")))
                                    (federal_program_total
                                     .
                                     #hasheq((format . "bigint")
                                             (type . "integer")))
                                    (findings_count
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (fy_end_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (fy_start_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "Note:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (is_direct
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_loan
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_major
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (loan_balance_at_audit_period_end
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (mp_audit_report_type
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (other_cluster_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 75)
                                             (type . "string")))
                                    (passthrough_amount
                                     .
                                     #hasheq((format . "bigint")
                                             (type . "integer")))
                                    (passthrough_award
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (report_id
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (state_cluster_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 75)
                                             (type . "string")))
                                    (type_requirement
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))))
                           (type . "object")))
                  (vw_finding
                   .
                   #hasheq((properties
                            .
                            #hasheq((audit_year
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (auditee_ein
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (auditee_uei
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (award_seq_number
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (federal_agency_prefix
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 2)
                                             (type . "string")))
                                    (federal_award_extension
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 3)
                                             (type . "string")))
                                    (finding_ref_number
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 100)
                                             (type . "string")))
                                    (finding_seq_number
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (fy_end_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (fy_start_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "Note:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (is_material_weakness
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_significant_deficiency
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (modified_opinion
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (other_findings
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (other_non_compliance
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (prior_finding_ref_numbers
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 100)
                                             (type . "string")))
                                    (questioned_costs
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (repeat_finding
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (report_id
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (type_requirement
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))))
                           (type . "object")))
                  (vw_finding_text
                   .
                   #hasheq((properties
                            .
                            #hasheq((audit_year
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (auditee_ein
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (auditee_uei
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (charts_tables
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (finding_ref_number
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 100)
                                             (type . "string")))
                                    (finding_text
                                     .
                                     #hasheq((format . "text")
                                             (type . "string")))
                                    (fy_end_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (fy_start_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "Note:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (report_id
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))))
                           (type . "object")))
                  (vw_findings
                   .
                   #hasheq((description . "A finding from the audit")
                           (properties
                            .
                            #hasheq((audit_findings_id
                                     .
                                     #hasheq((description
                                              .
                                              "FAC system generated sequence number for finding   Census mapping: FINDINGS, ELECAUDITFINDINGSID")
                                             (format . "integer")
                                             (type . "integer")))
                                    (audit_id
                                     .
                                     #hasheq((description
                                              .
                                              "FAC system generated sequence number used to link to Findings data between CFDA Info and Findings   Census mapping: FINDINGS, ELECAUDITSID")
                                             (format . "integer")
                                             (type . "integer")))
                                    (audit_year
                                     .
                                     #hasheq((description
                                              .
                                              "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: FINDINGS, AUDITYEAR")
                                             (format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (dbkey
                                     .
                                     #hasheq((description
                                              .
                                              "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: FINDINGS, DBKEY")
                                             (format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (finding_ref_number
                                     .
                                     #hasheq((description
                                              .
                                              "Findings Reference Numbers   Data sources: SF-SAC 2013-2015: III/7/d; SF-SAC 2016-2018: III/4/e; SF-SAC 2019-2021: III/4/e; SF-SAC 2022: III/4/e Census mapping: FINDINGS, FINDINGSREFNUMS")
                                             (format . "character varying")
                                             (maxLength . 100)
                                             (type . "string")))
                                    (findings_text_id
                                     .
                                     #hasheq((format . "bigint[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (general_id
                                     .
                                     #hasheq((format . "bigint[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "ID   \n\nNote:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (is_public
                                     .
                                     #hasheq((description
                                              .
                                              "True for public records, False for non-public records   ")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (material_weakness
                                     .
                                     #hasheq((description
                                              .
                                              "Material Weakness finding   Data sources: SF-SAC 2013-2015: III/7/h; SF-SAC 2016-2018: III/4/i; SF-SAC 2019-2021: III/4/i; SF-SAC 2022: III/4/i Census mapping: FINDINGS, MATERIALWEAKNESS")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (modified_opinion
                                     .
                                     #hasheq((description
                                              .
                                              "Modified Opinion finding   Data sources: SF-SAC 2013-2015: III/7/f; SF-SAC 2016-2018: III/4/g; SF-SAC 2019-2021: III/4/g; SF-SAC 2022: III/4/g Census mapping: FINDINGS, MODIFIEDOPINION")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (other_findings
                                     .
                                     #hasheq((description
                                              .
                                              "Other findings   Data sources: SF-SAC 2013-2015: III/7/j; SF-SAC 2016-2018: III/4/k; SF-SAC 2019-2021: III/4/k; SF-SAC 2022: III/4/k Census mapping: FINDINGS, OTHERFINDINGS")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (other_non_compliance
                                     .
                                     #hasheq((description
                                              .
                                              "Other Noncompliance finding   Data sources: SF-SAC 2013-2015: III/7/g; SF-SAC 2016-2018: III/4/h; SF-SAC 2019-2021: III/4/h; SF-SAC 2022: III/4/h Census mapping: FINDINGS, OTHERNONCOMPLIANCE")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (prior_finding_ref_numbers
                                     .
                                     #hasheq((description
                                              .
                                              "Audit finding reference numbers from the immediate prior audit   Data sources: SF-SAC 2016-2018: III/4/n; SF-SAC 2019-2021: III/4/n; SF-SAC 2022: III/4/n Census mapping: FINDINGS, PRIORFINDINGREFNUMS")
                                             (format . "character varying")
                                             (maxLength . 100)
                                             (type . "string")))
                                    (questioned_costs
                                     .
                                     #hasheq((description
                                              .
                                              "Questioned Costs   Data sources: SF-SAC 2013-2015: III/7/k; SF-SAC 2016-2018: III/4/l; SF-SAC 2019-2021: III/4/l; SF-SAC 2022: III/4/l Census mapping: FINDINGS, QCOSTS")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (repeat_finding
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates whether or not the audit finding was a repeat of an audit finding in the immediate prior audit   Data sources: SF-SAC 2016-2018: III/4/m; SF-SAC 2019-2021: III/4/m; SF-SAC 2022: III/4/m Census mapping: FINDINGS, REPEATFINDING")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (significant_deficiency
                                     .
                                     #hasheq((description
                                              .
                                              "Significant Deficiency finding   Data sources: SF-SAC 1997-2000: II/3; SF-SAC 2001-2003: II/3; SF-SAC 2004-2007: II/3; SF-SAC 2008-2009: II/3; SF-SAC 2010-2012: II/3; SF-SAC 2013-2015: II/3; SF-SAC 2016-2018: III/2/c; SF-SAC 2019-2021: III/2/c; SF-SAC 2022: III/2/c Census mapping: FINDINGS, SIGNIFICANTDEFICIENCY")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (type_requirement
                                     .
                                     #hasheq((description
                                              .
                                              "Type Requirement Failure   Data sources: SF-SAC 2013-2015: III/7/e; SF-SAC 2016-2018: III/4/f; SF-SAC 2019-2021: III/4/f; SF-SAC 2022: III/4/f Census mapping: FINDINGS, TYPEREQUIREMENT")
                                             (format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))))
                           (type . "object")))
                  (vw_findings_text
                   .
                   #hasheq((description . "Specific findings details")
                           (properties
                            .
                            #hasheq((audit_year
                                     .
                                     #hasheq((description
                                              .
                                              "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: FINDINGSTEXT, AUDITYEAR")
                                             (format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (charts_tables
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates whether or not the text contained charts or tables that could not be entered due to formatting restrictions   Census mapping: FINDINGSTEXT, CHARTSTABLES")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (dbkey
                                     .
                                     #hasheq((description
                                              .
                                              "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: FINDINGSTEXT, DBKEY")
                                             (format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (finding_ref_number
                                     .
                                     #hasheq((description
                                              .
                                              "Audit Finding Reference Number   Data sources: SF-SAC 2019-2021: III/5/a; SF-SAC 2022: III/5/a Census mapping: FINDINGSTEXT, FINDINGREFNUMS")
                                             (format . "character varying")
                                             (maxLength . 100)
                                             (type . "string")))
                                    (general_id
                                     .
                                     #hasheq((format . "bigint[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "ID   \n\nNote:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (is_public
                                     .
                                     #hasheq((description
                                              .
                                              "True for public records, False for non-public records   ")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (sequence_number
                                     .
                                     #hasheq((description
                                              .
                                              "Order that the findings text was reported   Census mapping: FINDINGSTEXT, SEQ_NUMBER")
                                             (format . "integer")
                                             (type . "integer")))
                                    (text
                                     .
                                     #hasheq((description
                                              .
                                              "Content of the finding text   Data sources: SF-SAC 2019-2021: III/5/b; SF-SAC 2022: III/5/b Census mapping: FINDINGSTEXT, TEXT")
                                             (format . "text")
                                             (type . "string")))))
                           (type . "object")))
                  (vw_general
                   .
                   #hasheq((properties
                            .
                            #hasheq((audit_period_covered
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (audit_type
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (audit_year
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (auditee_addl_duns_list
                                     .
                                     #hasheq((format . "character varying[]")
                                             (items
                                              .
                                              #hasheq((type . "string")))
                                             (type . "array")))
                                    (auditee_addl_ein_list
                                     .
                                     #hasheq((format . "integer[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (auditee_addl_uei_list
                                     .
                                     #hasheq((format . "character varying[]")
                                             (items
                                              .
                                              #hasheq((type . "string")))
                                             (type . "array")))
                                    (auditee_address_line_1
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 45)
                                             (type . "string")))
                                    (auditee_certified_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (auditee_certify_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (auditee_certify_title
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (auditee_city
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 30)
                                             (type . "string")))
                                    (auditee_contact_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (auditee_contact_title
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (auditee_duns
                                     .
                                     #hasheq((format . "character varying[]")
                                             (items
                                              .
                                              #hasheq((type . "string")))
                                             (type . "array")))
                                    (auditee_ein
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (auditee_email
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 60)
                                             (type . "string")))
                                    (auditee_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 70)
                                             (type . "string")))
                                    (auditee_phone
                                     .
                                     #hasheq((format . "bigint")
                                             (type . "integer")))
                                    (auditee_state
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 2)
                                             (type . "string")))
                                    (auditee_uei
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (auditee_zip
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 12)
                                             (type . "string")))
                                    (auditor_address_line_1
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 45)
                                             (type . "string")))
                                    (auditor_certified_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (auditor_city
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 30)
                                             (type . "string")))
                                    (auditor_contact_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (auditor_contact_title
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (auditor_country
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 45)
                                             (type . "string")))
                                    (auditor_ein
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (auditor_email
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 60)
                                             (type . "string")))
                                    (auditor_firm_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 64)
                                             (type . "string")))
                                    (auditor_foreign_addr
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 200)
                                             (type . "string")))
                                    (auditor_phone
                                     .
                                     #hasheq((format . "bigint")
                                             (type . "integer")))
                                    (auditor_state
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 2)
                                             (type . "string")))
                                    (auditor_zip
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 12)
                                             (type . "string")))
                                    (cfac_report_id
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (cfac_version
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (cognizant_agency
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 2)
                                             (type . "string")))
                                    (condition_or_deficiency_major_program
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (create_date
                                     .
                                     #hasheq((format
                                              .
                                              "timestamp with time zone")
                                             (type . "string")))
                                    (current_or_former_findings
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (data_source
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 25)
                                             (type . "string")))
                                    (date_published
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (date_received
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (dbkey
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (dollar_threshold
                                     .
                                     #hasheq((format . "double precision")
                                             (type . "number")))
                                    (ein_subcode
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (entity_type
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (fac_accepted_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (federal_agency_prefix
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 2)
                                             (type . "string")))
                                    (federal_award_extension
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 3)
                                             (type . "string")))
                                    (form_date_received
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (fy_end_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (fy_start_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (hist_auditee_address_line_2
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 45)
                                             (type . "string")))
                                    (hist_auditee_fax
                                     .
                                     #hasheq((format . "bigint")
                                             (type . "integer")))
                                    (hist_auditor_address_line_2
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 45)
                                             (type . "string")))
                                    (hist_auditor_fax
                                     .
                                     #hasheq((format . "bigint")
                                             (type . "integer")))
                                    (hist_completed_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (hist_component_date_received
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (hist_previous_completed_on
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (hist_previous_date_published
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (hist_reportable_condition
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (hist_type_of_entity
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "Note:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (initial_date_received
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (is_duplicate_reports
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_going_concern
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_low_risk
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_material_noncompliance
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_material_weakness
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_public
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_significant_deficiency
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (is_special_framework_required
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (material_weakness
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (material_weakness_major_program
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (modified_date
                                     .
                                     #hasheq((format
                                              .
                                              "timestamp with time zone")
                                             (type . "string")))
                                    (multiple_auditors
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (multiple_duns
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (multiple_ein
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (multiple_uei
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (number_months
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (oversight_agency
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (pdf_url
                                     .
                                     #hasheq((format . "character varying[]")
                                             (items
                                              .
                                              #hasheq((type . "string")))
                                             (type . "array")))
                                    (prior_year_schedule
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (questioned_costs
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (report_id
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (report_required
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (special_framework
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (suppression_code
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (total_fed_expenditures
                                     .
                                     #hasheq((format . "bigint")
                                             (type . "integer")))
                                    (type_audit_code
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (type_report_financial_statements
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (type_report_major_program
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (type_report_special_purpose_framework
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))))
                           (type . "object")))
                  (vw_note
                   .
                   #hasheq((properties
                            .
                            #hasheq((audit_year
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (auditee_ein
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (auditee_uei
                                     .
                                     #hasheq((format . "character varying")
                                             (type . "string")))
                                    (content
                                     .
                                     #hasheq((format . "text")
                                             (type . "string")))
                                    (fy_end_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (fy_start_date
                                     .
                                     #hasheq((format . "date")
                                             (type . "string")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "Note:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (note_index
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (note_seq_number
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (note_title
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 75)
                                             (type . "string")))
                                    (report_id
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (type_id
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 1)
                                             (type . "string")))))
                           (type . "object")))
                  (vw_passthrough
                   .
                   #hasheq((description
                            .
                            "The pass-through entity information, when it is not a direct federal award")
                           (properties
                            .
                            #hasheq((audit_id
                                     .
                                     #hasheq((format . "integer")
                                             (type . "integer")))
                                    (audit_year
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (dbkey
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (general_id
                                     .
                                     #hasheq((format . "bigint[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "Note:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (is_public
                                     .
                                     #hasheq((format . "boolean")
                                             (type . "boolean")))
                                    (passthrough_id
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 70)
                                             (type . "string")))
                                    (passthrough_name
                                     .
                                     #hasheq((format . "character varying")
                                             (maxLength . 150)
                                             (type . "string")))))
                           (type . "object")))
                  (vw_revision
                   .
                   #hasheq((description
                            .
                            "Documents what was revised on the associated form from the previous version")
                           (properties
                            .
                            #hasheq((audit_info
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates what items on the Audit Info page were edited during the revision   Census mapping: REVISIONS, AUDITINFO")
                                             (format . "character varying")
                                             (maxLength . 200)
                                             (type . "string")))
                                    (audit_info_explain
                                     .
                                     #hasheq((description
                                              .
                                              "Explanation of what items on the Audit Info page were edited during the revision   Census mapping: REVISIONS, AUDITINFO_EXPLAIN")
                                             (format . "text")
                                             (type . "string")))
                                    (audit_year
                                     .
                                     #hasheq((description
                                              .
                                              "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: REVISIONS, AUDITYEAR")
                                             (format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (cap
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates what items on the CAP Text page were edited during the revision   Census mapping: REVISIONS, CAP")
                                             (format . "character varying")
                                             (maxLength . 6)
                                             (type . "string")))
                                    (cap_explain
                                     .
                                     #hasheq((description
                                              .
                                              "Explanation of what items on the CAP Text page were edited during the revision   Census mapping: REVISIONS, CAP_EXPLAIN")
                                             (format . "text")
                                             (type . "string")))
                                    (dbkey
                                     .
                                     #hasheq((description
                                              .
                                              "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: REVISIONS, DBKEY")
                                             (format . "character varying")
                                             (maxLength . 40)
                                             (type . "string")))
                                    (federal_awards
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates what items on the Federal Awards page were edited during the revision   Census mapping: REVISIONS, FEDERALAWARDS")
                                             (format . "character varying")
                                             (maxLength . 140)
                                             (type . "string")))
                                    (federal_awards_explain
                                     .
                                     #hasheq((description
                                              .
                                              "Explanation of what items on the Federal Awards page were edited during the revision   Census mapping: REVISIONS, FEDERALAWARDS_EXPLAIN")
                                             (format . "text")
                                             (type . "string")))
                                    (findings
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates what items on the Findings page were edited during the revision   Census mapping: REVISIONS, FINDINGS")
                                             (format . "character varying")
                                             (maxLength . 110)
                                             (type . "string")))
                                    (findings_explain
                                     .
                                     #hasheq((description
                                              .
                                              "Explanation of what items on the Findings page were edited during the revision   Census mapping: REVISIONS, FINDINGS_EXPLAIN")
                                             (format . "text")
                                             (type . "string")))
                                    (findings_text
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates what items on the Text of the Audit Findings page were edited during the revision   Census mapping: REVISIONS, FINDINGSTEXT")
                                             (format . "character varying")
                                             (maxLength . 6)
                                             (type . "string")))
                                    (findings_text_explain
                                     .
                                     #hasheq((description
                                              .
                                              "Explanation of what items on the Text of the Audit Findings page were edited during the revision   Census mapping: REVISIONS, FINDINGSTEXT_EXPLAIN")
                                             (format . "text")
                                             (type . "string")))
                                    (general_id
                                     .
                                     #hasheq((format . "bigint[]")
                                             (items
                                              .
                                              #hasheq((type . "integer")))
                                             (type . "array")))
                                    (general_info
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates what items on the General Info page were edited during the revision   Census mapping: REVISIONS, GENINFO")
                                             (format . "character varying")
                                             (maxLength . 75)
                                             (type . "string")))
                                    (general_info_explain
                                     .
                                     #hasheq((description
                                              .
                                              "Explanation of what items on the General Info page were edited during the revision   Census mapping: REVISIONS, GENINFO_EXPLAIN")
                                             (format . "text")
                                             (type . "string")))
                                    (id
                                     .
                                     #hasheq((description
                                              .
                                              "ID   \n\nNote:\nThis is a Primary Key.<pk/>")
                                             (format . "bigint")
                                             (type . "integer")))
                                    (is_public
                                     .
                                     #hasheq((description
                                              .
                                              "True for public records, False for non-public records   ")
                                             (format . "boolean")
                                             (type . "boolean")))
                                    (notes_to_sefa
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates what items on the Notes to Schedule of Expenditures of Federal Awards (SEFA) page were edited during the revision   Census mapping: REVISIONS, NOTESTOSEFA")
                                             (format . "character varying")
                                             (maxLength . 50)
                                             (type . "string")))
                                    (notes_to_sefa_explain
                                     .
                                     #hasheq((description
                                              .
                                              "Explanation of what items on the Notes to Schedule of Expenditures of Federal Awards (SEFA) page were edited during the revision   Census mapping: REVISIONS, NOTESTOSEFA_EXPLAIN")
                                             (format . "text")
                                             (type . "string")))
                                    (other
                                     .
                                     #hasheq((description
                                              .
                                              "Indicates what other miscellaneous items were edited during the revision   Census mapping: REVISIONS, OTHER")
                                             (format . "character varying")
                                             (maxLength . 65)
                                             (type . "string")))
                                    (other_explain
                                     .
                                     #hasheq((description
                                              .
                                              "Explanation of what other miscellaneous items were edited during the revision   Census mapping: REVISIONS, OTHER_EXPLAIN")
                                             (format . "text")
                                             (type . "string")))
                                    (revision_id
                                     .
                                     #hasheq((description
                                              .
                                              "Internal Unique Identifier for the record   Census mapping: REVISIONS, ELECRPTREVISIONID")
                                             (format . "integer")
                                             (type . "integer")))))
                           (type . "object")))))
         (externalDocs
          .
          #hasheq((description . "PostgREST Documentation")
                  (url . "https://postgrest.org/en/v11.0/api.html")))
         (host . "0.0.0.0:3000")
         (info
          .
          #hasheq((description
                   .
                   "This is a dynamic API generated by PostgREST")
                  (title . "PostgREST API")
                  (version . "11.0.1")))
         (parameters
          .
          #hasheq((body.vw_auditee
                   .
                   #hasheq((description . "vw_auditee")
                           (in . "body")
                           (name . "vw_auditee")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref . "#/definitions/vw_auditee")))))
                  (body.vw_auditor
                   .
                   #hasheq((description . "vw_auditor")
                           (in . "body")
                           (name . "vw_auditor")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref . "#/definitions/vw_auditor")))))
                  (body.vw_cap_text
                   .
                   #hasheq((description . "vw_cap_text")
                           (in . "body")
                           (name . "vw_cap_text")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref . "#/definitions/vw_cap_text")))))
                  (body.vw_federal_award
                   .
                   #hasheq((description . "vw_federal_award")
                           (in . "body")
                           (name . "vw_federal_award")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref
                                     .
                                     "#/definitions/vw_federal_award")))))
                  (body.vw_finding
                   .
                   #hasheq((description . "vw_finding")
                           (in . "body")
                           (name . "vw_finding")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref . "#/definitions/vw_finding")))))
                  (body.vw_finding_text
                   .
                   #hasheq((description . "vw_finding_text")
                           (in . "body")
                           (name . "vw_finding_text")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref
                                     .
                                     "#/definitions/vw_finding_text")))))
                  (body.vw_findings
                   .
                   #hasheq((description . "vw_findings")
                           (in . "body")
                           (name . "vw_findings")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref . "#/definitions/vw_findings")))))
                  (body.vw_findings_text
                   .
                   #hasheq((description . "vw_findings_text")
                           (in . "body")
                           (name . "vw_findings_text")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref
                                     .
                                     "#/definitions/vw_findings_text")))))
                  (body.vw_general
                   .
                   #hasheq((description . "vw_general")
                           (in . "body")
                           (name . "vw_general")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref . "#/definitions/vw_general")))))
                  (body.vw_note
                   .
                   #hasheq((description . "vw_note")
                           (in . "body")
                           (name . "vw_note")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref . "#/definitions/vw_note")))))
                  (body.vw_passthrough
                   .
                   #hasheq((description . "vw_passthrough")
                           (in . "body")
                           (name . "vw_passthrough")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref . "#/definitions/vw_passthrough")))))
                  (body.vw_revision
                   .
                   #hasheq((description . "vw_revision")
                           (in . "body")
                           (name . "vw_revision")
                           (required . #f)
                           (schema
                            .
                            #hasheq(($ref . "#/definitions/vw_revision")))))
                  (limit
                   .
                   #hasheq((description . "Limiting and Pagination")
                           (in . "query")
                           (name . "limit")
                           (required . #f)
                           (type . "string")))
                  (offset
                   .
                   #hasheq((description . "Limiting and Pagination")
                           (in . "query")
                           (name . "offset")
                           (required . #f)
                           (type . "string")))
                  (on_conflict
                   .
                   #hasheq((description . "On Conflict")
                           (in . "query")
                           (name . "on_conflict")
                           (required . #f)
                           (type . "string")))
                  (order
                   .
                   #hasheq((description . "Ordering")
                           (in . "query")
                           (name . "order")
                           (required . #f)
                           (type . "string")))
                  (preferCount
                   .
                   #hasheq((description . "Preference")
                           (enum . ("count=none"))
                           (in . "header")
                           (name . "Prefer")
                           (required . #f)
                           (type . "string")))
                  (preferParams
                   .
                   #hasheq((description . "Preference")
                           (enum . ("params=single-object"))
                           (in . "header")
                           (name . "Prefer")
                           (required . #f)
                           (type . "string")))
                  (preferPost
                   .
                   #hasheq((description . "Preference")
                           (enum
                            .
                            ("return=representation"
                             "return=minimal"
                             "return=none"
                             "resolution=ignore-duplicates"
                             "resolution=merge-duplicates"))
                           (in . "header")
                           (name . "Prefer")
                           (required . #f)
                           (type . "string")))
                  (preferReturn
                   .
                   #hasheq((description . "Preference")
                           (enum
                            .
                            ("return=representation"
                             "return=minimal"
                             "return=none"))
                           (in . "header")
                           (name . "Prefer")
                           (required . #f)
                           (type . "string")))
                  (range
                   .
                   #hasheq((description . "Limiting and Pagination")
                           (in . "header")
                           (name . "Range")
                           (required . #f)
                           (type . "string")))
                  (rangeUnit
                   .
                   #hasheq((default . "items")
                           (description . "Limiting and Pagination")
                           (in . "header")
                           (name . "Range-Unit")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_certify_name
                   .
                   #hasheq((description
                            .
                            "Name of Auditee Certifying Official   Data sources: SF-SAC 1997-2000: I/6/g; SF-SAC 2001-2003: I/6/g; SF-SAC 2004-2007: I/6/g; SF-SAC 2008-2009: I/5/g; SF-SAC 2010-2012: I/5/g; SF-SAC 2013-2015: certifications; SF-SAC 2016-2018: certifications; SF-SAC 2019-2021: certifications; SF-SAC 2022: certifications Census mapping: GENERAL, AUDITEECERTIFYNAME")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_certify_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_certify_title
                   .
                   #hasheq((description
                            .
                            "Title of Auditee Certifying Official   Data sources: SF-SAC 1997-2000: I/6/g; SF-SAC 2001-2003: I/6/g; SF-SAC 2004-2007: I/6/g; SF-SAC 2008-2009: I/5/g; SF-SAC 2010-2012: I/5/g; SF-SAC 2013-2015: certifications; SF-SAC 2016-2018: certifications; SF-SAC 2019-2021: certifications; SF-SAC 2022: certifications Census mapping: GENERAL, AUDITEECERTIFYTITLE")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_certify_title")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_city
                   .
                   #hasheq((description
                            .
                            "Auditee City   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, CITY")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_city")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_contact
                   .
                   #hasheq((description
                            .
                            "Name of Auditee Contact   Data sources: SF-SAC 1997-2000: I/6/c; SF-SAC 2001-2003: I/6/c; SF-SAC 2004-2007: I/6/c; SF-SAC 2008-2009: I/5/c; SF-SAC 2010-2012: I/5/c; SF-SAC 2013-2015: I/5/c; SF-SAC 2016-2018: I/5/c; SF-SAC 2019-2021: I/5/c; SF-SAC 2022: I/5/c Census mapping: GENERAL, AUDITEECONTACT")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_contact")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_email
                   .
                   #hasheq((description
                            .
                            "Auditee Email address   Data sources: SF-SAC 1997-2000: I/6/f; SF-SAC 2001-2003: I/6/f; SF-SAC 2004-2007: I/6/f; SF-SAC 2008-2009: I/5/f; SF-SAC 2010-2012: I/5/f; SF-SAC 2013-2015: I/5/f; SF-SAC 2016-2018: I/5/e; SF-SAC 2019-2021: I/5/e; SF-SAC 2022: I/5/e Census mapping: GENERAL, AUDITEEEMAIL")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_email")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_fax
                   .
                   #hasheq((description
                            .
                            "Auditee Fax Number (optional)   Data sources: SF-SAC 1997-2000: I/6/e; SF-SAC 2001-2003: I/6/e; SF-SAC 2004-2007: I/6/e; SF-SAC 2008-2009: I/5/e; SF-SAC 2010-2012: I/5/e; SF-SAC 2013-2015: I/5/e Census mapping: GENERAL, AUDITEEFAX")
                           (format . "bigint")
                           (in . "query")
                           (name . "auditee_fax")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_name
                   .
                   #hasheq((description
                            .
                            "Name of the Auditee   Data sources: SF-SAC 1997-2000: I/6/a; SF-SAC 2001-2003: I/6/a; SF-SAC 2004-2007: I/6/a; SF-SAC 2008-2009: I/5/a; SF-SAC 2010-2012: I/5/a; SF-SAC 2013-2015: I/5/a; SF-SAC 2016-2018: I/5/a; SF-SAC 2019-2021: I/5/a; SF-SAC 2022: I/5/a Census mapping: GENERAL, AUDITEENAME")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_name_title
                   .
                   #hasheq((description
                            .
                            "Title of Auditee Certifying Official   Data sources: SF-SAC 1997-2000: I/6/g; SF-SAC 2001-2003: I/6/g; SF-SAC 2004-2007: I/6/g; SF-SAC 2008-2009: I/5/g; SF-SAC 2010-2012: I/5/g; SF-SAC 2013-2015: certifications; SF-SAC 2016-2018: certifications; SF-SAC 2019-2021: certifications; SF-SAC 2022: certifications Census mapping: GENERAL, AUDITEENAMETITLE")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_name_title")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_phone
                   .
                   #hasheq((description
                            .
                            "Auditee Phone Number   Data sources: SF-SAC 1997-2000: I/6/d; SF-SAC 2001-2003: I/6/d; SF-SAC 2004-2007: I/6/d; SF-SAC 2008-2009: I/5/d; SF-SAC 2010-2012: I/5/d; SF-SAC 2013-2015: I/5/d; SF-SAC 2016-2018: I/5/d; SF-SAC 2019-2021: I/5/d; SF-SAC 2022: I/5/d Census mapping: GENERAL, AUDITEEPHONE")
                           (format . "bigint")
                           (in . "query")
                           (name . "auditee_phone")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_state
                   .
                   #hasheq((description
                            .
                            "Auditee State   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, STATE")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_state")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_street1
                   .
                   #hasheq((description
                            .
                            "Auditee Street Address   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, STREET1")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_street1")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_street2
                   .
                   #hasheq((description
                            .
                            "Auditee Street Address   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, STREET2")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_street2")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_title
                   .
                   #hasheq((description
                            .
                            "Title of Auditee Contact   Data sources: SF-SAC 1997-2000: I/6/c; SF-SAC 2001-2003: I/6/c; SF-SAC 2004-2007: I/6/c; SF-SAC 2008-2009: I/5/c; SF-SAC 2010-2012: I/5/c; SF-SAC 2013-2015: I/5/c; SF-SAC 2016-2018: I/5/c; SF-SAC 2019-2021: I/5/c; SF-SAC 2022: I/5/c Census mapping: GENERAL, AUDITEETITLE")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_title")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.auditee_zip_code
                   .
                   #hasheq((description
                            .
                            "Auditee Zip Code   Data sources: SF-SAC 1997-2000: I/6/b; SF-SAC 2001-2003: I/6/b; SF-SAC 2004-2007: I/6/b; SF-SAC 2008-2009: I/5/b; SF-SAC 2010-2012: I/5/b; SF-SAC 2013-2015: I/5/b; SF-SAC 2016-2018: I/5/b; SF-SAC 2019-2021: I/5/b; SF-SAC 2022: I/5/b Census mapping: GENERAL, ZIPCODE")
                           (format . "character varying")
                           (in . "query")
                           (name . "auditee_zip_code")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.dbkey
                   .
                   #hasheq((format . "character varying[]")
                           (in . "query")
                           (name . "dbkey")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.duns_list
                   .
                   #hasheq((description . "duns list   ")
                           (format . "integer[]")
                           (in . "query")
                           (name . "duns_list")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.ein_list
                   .
                   #hasheq((description . "ein list   ")
                           (format . "integer[]")
                           (in . "query")
                           (name . "ein_list")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.ein_subcode
                   .
                   #hasheq((description
                            .
                            "Subcode assigned to the EIN.   Census mapping: GENERAL, EINSUBCODE")
                           (format . "integer")
                           (in . "query")
                           (name . "ein_subcode")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.general_id
                   .
                   #hasheq((format . "bigint[]")
                           (in . "query")
                           (name . "general_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.id
                   .
                   #hasheq((description . "ID   ")
                           (format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.is_public
                   .
                   #hasheq((description
                            .
                            "True if appears in a public record   ")
                           (format . "boolean")
                           (in . "query")
                           (name . "is_public")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditee.uei_list
                   .
                   #hasheq((description . "uei list   ")
                           (format . "character varying[]")
                           (in . "query")
                           (name . "uei_list")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_city
                   .
                   #hasheq((description
                            .
                            "CPA City   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPACITY (AND) Data sources: SF-SAC 2008-2009: I/8/b; SF-SAC 2010-2012: I/8/b; SF-SAC 2013-2015: I/8/d; SF-SAC 2016-2018: I/8/d; SF-SAC 2019-2021: I/6/h/iv; SF-SAC 2022: I/6/h/iv Census mapping: MULTIPLE CPAS INFO, CPACITY")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_city")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_contact
                   .
                   #hasheq((description
                            .
                            "Name of CPA Contact   Data sources: SF-SAC 1997-2000: I/7/c; SF-SAC 2001-2003: I/7/c; SF-SAC 2004-2007: I/7/c; SF-SAC 2008-2009: I/6/c; SF-SAC 2010-2012: I/6/c; SF-SAC 2013-2015: I/6/d; SF-SAC 2016-2018: I/6/d; SF-SAC 2019-2021: I/6/d; SF-SAC 2022: I/6/d Census mapping: GENERAL, CPACONTACT (AND) Data sources: SF-SAC 2008-2009: I/8/c; SF-SAC 2010-2012: I/8/c; SF-SAC 2013-2015: I/8/g; SF-SAC 2016-2018: I/8/g; SF-SAC 2019-2021: I/6/h/vii; SF-SAC 2022: I/6/h/vii Census mapping: MULTIPLE CPAS INFO, CPACONTACT")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_contact")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_country
                   .
                   #hasheq((description
                            .
                            "CPA Country   Data sources: SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPACOUNTRY")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_country")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_ein
                   .
                   #hasheq((description
                            .
                            "CPA Firm EIN (only available for audit years 2013 and beyond)   Data sources: SF-SAC 2013-2015: I/6/b; SF-SAC 2016-2018: I/6/b; SF-SAC 2019-2021: I/6/b; SF-SAC 2022: I/6/b Census mapping: GENERAL, AUDITOR_EIN (AND) Data sources: SF-SAC 2013-2015: I/8/b; SF-SAC 2016-2018: I/8/b; SF-SAC 2019-2021: I/6/h/ii; SF-SAC 2022: I/6/h/ii Census mapping: MULTIPLE CPAS INFO, CPAEIN")
                           (format . "integer")
                           (in . "query")
                           (name . "cpa_ein")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_email
                   .
                   #hasheq((description
                            .
                            "CPA mail address (optional)   Data sources: SF-SAC 1997-2000: I/7/f; SF-SAC 2001-2003: I/7/f; SF-SAC 2004-2007: I/7/f; SF-SAC 2008-2009: I/6/f; SF-SAC 2010-2012: I/6/f; SF-SAC 2013-2015: I/6/g; SF-SAC 2016-2018: I/6/f; SF-SAC 2019-2021: I/6/f; SF-SAC 2022: I/6/f Census mapping: GENERAL, CPAEMAIL (AND) Data sources: SF-SAC 2008-2009: I/8/f; SF-SAC 2010-2012: I/8/f; SF-SAC 2013-2015: I/8/k; SF-SAC 2016-2018: I/8/k; SF-SAC 2019-2021: I/6/h/x; SF-SAC 2022: I/6/h/x Census mapping: MULTIPLE CPAS INFO, CPAEMAIL")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_email")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_fax
                   .
                   #hasheq((description
                            .
                            "CPA fax number (optional)   Data sources: SF-SAC 1997-2000: I/7/e; SF-SAC 2001-2003: I/7/e; SF-SAC 2004-2007: I/7/e; SF-SAC 2008-2009: I/6/e; SF-SAC 2010-2012: I/6/e; SF-SAC 2013-2015: I/6/f Census mapping: GENERAL, CPAFAX (AND) Data sources: SF-SAC 2008-2009: I/8/e; SF-SAC 2010-2012: I/8/e; SF-SAC 2013-2015: I/8/j; SF-SAC 2016-2018: I/8/j Census mapping: MULTIPLE CPAS INFO, CPAFAX")
                           (format . "bigint")
                           (in . "query")
                           (name . "cpa_fax")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_firm_name
                   .
                   #hasheq((description
                            .
                            "CPA Firm Name   Data sources: SF-SAC 1997-2000: I/7/a; SF-SAC 2001-2003: I/7/a; SF-SAC 2004-2007: I/7/a; SF-SAC 2008-2009: I/6/a; SF-SAC 2010-2012: I/6/a; SF-SAC 2013-2015: I/6/a; SF-SAC 2016-2018: I/6/a; SF-SAC 2019-2021: I/6/a; SF-SAC 2022: I/6/a Census mapping: GENERAL, CPAFIRMNAME (AND) Data sources: SF-SAC 2008-2009: I/8/a; SF-SAC 2010-2012: I/8/a; SF-SAC 2013-2015: I/8/a; SF-SAC 2016-2018: I/8/a; SF-SAC 2019-2021: I/6/h/i; SF-SAC 2022: I/6/h/i Census mapping: MULTIPLE CPAS INFO, CPAFIRMNAME")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_firm_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_foreign
                   .
                   #hasheq((description
                            .
                            "CPA Address - if international   Data sources: SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPAFOREIGN")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_foreign")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_phone
                   .
                   #hasheq((description
                            .
                            "CPA phone number   Data sources: SF-SAC 1997-2000: I/7/d; SF-SAC 2001-2003: I/7/d; SF-SAC 2004-2007: I/7/d; SF-SAC 2008-2009: I/6/d; SF-SAC 2010-2012: I/6/d; SF-SAC 2013-2015: I/6/e; SF-SAC 2016-2018: I/6/e; SF-SAC 2019-2021: I/6/e; SF-SAC 2022: I/6/e Census mapping: GENERAL, CPAPHONE (AND) Data sources: SF-SAC 2008-2009: I/8/d; SF-SAC 2010-2012: I/8/d; SF-SAC 2013-2015: I/8/i; SF-SAC 2016-2018: I/8/i; SF-SAC 2019-2021: I/6/h/ix; SF-SAC 2022: I/6/h/ix Census mapping: MULTIPLE CPAS INFO, CPAPHONE")
                           (format . "bigint")
                           (in . "query")
                           (name . "cpa_phone")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_state
                   .
                   #hasheq((description
                            .
                            "CPA State   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPASTATE (AND) Data sources: SF-SAC 2008-2009: I/8/b; SF-SAC 2010-2012: I/8/b; SF-SAC 2013-2015: I/8/e; SF-SAC 2016-2018: I/8/e; SF-SAC 2019-2021: I/6/h/v; SF-SAC 2022: I/6/h/v Census mapping: MULTIPLE CPAS INFO, CPASTATE")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_state")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_street1
                   .
                   #hasheq((description
                            .
                            "CPA Street Address   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPASTREET1 (AND) Data sources: SF-SAC 2008-2009: I/8/b; SF-SAC 2010-2012: I/8/b; SF-SAC 2013-2015: I/8/c; SF-SAC 2016-2018: I/8/c; SF-SAC 2019-2021: I/6/h/iii; SF-SAC 2022: I/6/h/iii Census mapping: MULTIPLE CPAS INFO, CPASTREET1")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_street1")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_street2
                   .
                   #hasheq((description
                            .
                            "CPA Street Address, line 2   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPASTREET2")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_street2")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_title
                   .
                   #hasheq((description
                            .
                            "Title of CPA Contact   Data sources: SF-SAC 1997-2000: I/7/c; SF-SAC 2001-2003: I/7/c; SF-SAC 2004-2007: I/7/c; SF-SAC 2008-2009: I/6/c; SF-SAC 2010-2012: I/6/c; SF-SAC 2013-2015: I/6/d; SF-SAC 2016-2018: I/6/d; SF-SAC 2019-2021: I/6/d; SF-SAC 2022: I/6/d Census mapping: GENERAL, CPATITLE (AND) Data sources: SF-SAC 2008-2009: I/8/c; SF-SAC 2010-2012: I/8/c; SF-SAC 2013-2015: I/8/h; SF-SAC 2016-2018: I/8/h; SF-SAC 2019-2021: I/6/h/viii; SF-SAC 2022: I/6/h/viii Census mapping: MULTIPLE CPAS INFO, CPATITLE")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_title")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.cpa_zip_code
                   .
                   #hasheq((description
                            .
                            "CPA Zip Code   Data sources: SF-SAC 1997-2000: I/7/b; SF-SAC 2001-2003: I/7/b; SF-SAC 2004-2007: I/7/b; SF-SAC 2008-2009: I/6/b; SF-SAC 2010-2012: I/6/b; SF-SAC 2013-2015: I/6/c; SF-SAC 2016-2018: I/6/c; SF-SAC 2019-2021: I/6/c; SF-SAC 2022: I/6/c Census mapping: GENERAL, CPAZIPCODE (AND) Data sources: SF-SAC 2008-2009: I/8/b; SF-SAC 2010-2012: I/8/b; SF-SAC 2013-2015: I/8/f; SF-SAC 2016-2018: I/8/f; SF-SAC 2019-2021: I/6/h/vi; SF-SAC 2022: I/6/h/vi Census mapping: MULTIPLE CPAS INFO, CPAZIPCODE")
                           (format . "character varying")
                           (in . "query")
                           (name . "cpa_zip_code")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.general_id
                   .
                   #hasheq((format . "bigint[]")
                           (in . "query")
                           (name . "general_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.id
                   .
                   #hasheq((description . "ID   ")
                           (format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.is_public
                   .
                   #hasheq((description
                            .
                            "True if appears in a public record   ")
                           (format . "boolean")
                           (in . "query")
                           (name . "is_public")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.secondary_auditor_general_id
                   .
                   #hasheq((format . "bigint[]")
                           (in . "query")
                           (name . "secondary_auditor_general_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_auditor.sequence_number
                   .
                   #hasheq((description
                            .
                            "Order that Auditors were reported on page 5 of SF-SAC (only for secondary_auditors)   Census mapping: GENERAL, SEQNUM (AND) Census mapping: MULTIPLE CPAS INFO, SEQNUM")
                           (format . "integer")
                           (in . "query")
                           (name . "sequence_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.audit_year
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.auditee_ein
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "auditee_ein")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.auditee_uei
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_uei")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.cap_text
                   .
                   #hasheq((format . "text")
                           (in . "query")
                           (name . "cap_text")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.charts_tables
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "charts_tables")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.finding_ref_number
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "finding_ref_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.fy_end_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_end_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.fy_start_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_start_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.id
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_cap_text.report_id
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "report_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.additional_award_identification
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "additional_award_identification")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.amount_expended
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "amount_expended")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.audit_year
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.auditee_ein
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "auditee_ein")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.auditee_uei
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_uei")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.award_seq_number
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "award_seq_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.cluster_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "cluster_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.cluster_total
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "cluster_total")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.federal_agency_prefix
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "federal_agency_prefix")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.federal_award_extension
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "federal_award_extension")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.federal_program_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "federal_program_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.federal_program_total
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "federal_program_total")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.findings_count
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "findings_count")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.fy_end_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_end_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.fy_start_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_start_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.id
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.is_direct
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_direct")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.is_loan
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_loan")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.is_major
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_major")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.loan_balance_at_audit_period_end
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "loan_balance_at_audit_period_end")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.mp_audit_report_type
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "mp_audit_report_type")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.other_cluster_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "other_cluster_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.passthrough_amount
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "passthrough_amount")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.passthrough_award
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "passthrough_award")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.report_id
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "report_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.state_cluster_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "state_cluster_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_federal_award.type_requirement
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "type_requirement")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.audit_year
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.auditee_ein
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "auditee_ein")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.auditee_uei
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_uei")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.award_seq_number
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "award_seq_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.federal_agency_prefix
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "federal_agency_prefix")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.federal_award_extension
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "federal_award_extension")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.finding_ref_number
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "finding_ref_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.finding_seq_number
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "finding_seq_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.fy_end_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_end_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.fy_start_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_start_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.id
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.is_material_weakness
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_material_weakness")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.is_significant_deficiency
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_significant_deficiency")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.modified_opinion
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "modified_opinion")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.other_findings
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "other_findings")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.other_non_compliance
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "other_non_compliance")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.prior_finding_ref_numbers
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "prior_finding_ref_numbers")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.questioned_costs
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "questioned_costs")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.repeat_finding
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "repeat_finding")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.report_id
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "report_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding.type_requirement
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "type_requirement")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.audit_year
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.auditee_ein
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "auditee_ein")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.auditee_uei
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_uei")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.charts_tables
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "charts_tables")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.finding_ref_number
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "finding_ref_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.finding_text
                   .
                   #hasheq((format . "text")
                           (in . "query")
                           (name . "finding_text")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.fy_end_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_end_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.fy_start_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_start_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.id
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_finding_text.report_id
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "report_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.audit_findings_id
                   .
                   #hasheq((description
                            .
                            "FAC system generated sequence number for finding   Census mapping: FINDINGS, ELECAUDITFINDINGSID")
                           (format . "integer")
                           (in . "query")
                           (name . "audit_findings_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.audit_id
                   .
                   #hasheq((description
                            .
                            "FAC system generated sequence number used to link to Findings data between CFDA Info and Findings   Census mapping: FINDINGS, ELECAUDITSID")
                           (format . "integer")
                           (in . "query")
                           (name . "audit_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.audit_year
                   .
                   #hasheq((description
                            .
                            "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: FINDINGS, AUDITYEAR")
                           (format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.dbkey
                   .
                   #hasheq((description
                            .
                            "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: FINDINGS, DBKEY")
                           (format . "character varying")
                           (in . "query")
                           (name . "dbkey")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.finding_ref_number
                   .
                   #hasheq((description
                            .
                            "Findings Reference Numbers   Data sources: SF-SAC 2013-2015: III/7/d; SF-SAC 2016-2018: III/4/e; SF-SAC 2019-2021: III/4/e; SF-SAC 2022: III/4/e Census mapping: FINDINGS, FINDINGSREFNUMS")
                           (format . "character varying")
                           (in . "query")
                           (name . "finding_ref_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.findings_text_id
                   .
                   #hasheq((format . "bigint[]")
                           (in . "query")
                           (name . "findings_text_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.general_id
                   .
                   #hasheq((format . "bigint[]")
                           (in . "query")
                           (name . "general_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.id
                   .
                   #hasheq((description . "ID   ")
                           (format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.is_public
                   .
                   #hasheq((description
                            .
                            "True for public records, False for non-public records   ")
                           (format . "boolean")
                           (in . "query")
                           (name . "is_public")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.material_weakness
                   .
                   #hasheq((description
                            .
                            "Material Weakness finding   Data sources: SF-SAC 2013-2015: III/7/h; SF-SAC 2016-2018: III/4/i; SF-SAC 2019-2021: III/4/i; SF-SAC 2022: III/4/i Census mapping: FINDINGS, MATERIALWEAKNESS")
                           (format . "boolean")
                           (in . "query")
                           (name . "material_weakness")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.modified_opinion
                   .
                   #hasheq((description
                            .
                            "Modified Opinion finding   Data sources: SF-SAC 2013-2015: III/7/f; SF-SAC 2016-2018: III/4/g; SF-SAC 2019-2021: III/4/g; SF-SAC 2022: III/4/g Census mapping: FINDINGS, MODIFIEDOPINION")
                           (format . "boolean")
                           (in . "query")
                           (name . "modified_opinion")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.other_findings
                   .
                   #hasheq((description
                            .
                            "Other findings   Data sources: SF-SAC 2013-2015: III/7/j; SF-SAC 2016-2018: III/4/k; SF-SAC 2019-2021: III/4/k; SF-SAC 2022: III/4/k Census mapping: FINDINGS, OTHERFINDINGS")
                           (format . "boolean")
                           (in . "query")
                           (name . "other_findings")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.other_non_compliance
                   .
                   #hasheq((description
                            .
                            "Other Noncompliance finding   Data sources: SF-SAC 2013-2015: III/7/g; SF-SAC 2016-2018: III/4/h; SF-SAC 2019-2021: III/4/h; SF-SAC 2022: III/4/h Census mapping: FINDINGS, OTHERNONCOMPLIANCE")
                           (format . "boolean")
                           (in . "query")
                           (name . "other_non_compliance")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.prior_finding_ref_numbers
                   .
                   #hasheq((description
                            .
                            "Audit finding reference numbers from the immediate prior audit   Data sources: SF-SAC 2016-2018: III/4/n; SF-SAC 2019-2021: III/4/n; SF-SAC 2022: III/4/n Census mapping: FINDINGS, PRIORFINDINGREFNUMS")
                           (format . "character varying")
                           (in . "query")
                           (name . "prior_finding_ref_numbers")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.questioned_costs
                   .
                   #hasheq((description
                            .
                            "Questioned Costs   Data sources: SF-SAC 2013-2015: III/7/k; SF-SAC 2016-2018: III/4/l; SF-SAC 2019-2021: III/4/l; SF-SAC 2022: III/4/l Census mapping: FINDINGS, QCOSTS")
                           (format . "boolean")
                           (in . "query")
                           (name . "questioned_costs")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.repeat_finding
                   .
                   #hasheq((description
                            .
                            "Indicates whether or not the audit finding was a repeat of an audit finding in the immediate prior audit   Data sources: SF-SAC 2016-2018: III/4/m; SF-SAC 2019-2021: III/4/m; SF-SAC 2022: III/4/m Census mapping: FINDINGS, REPEATFINDING")
                           (format . "boolean")
                           (in . "query")
                           (name . "repeat_finding")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.significant_deficiency
                   .
                   #hasheq((description
                            .
                            "Significant Deficiency finding   Data sources: SF-SAC 1997-2000: II/3; SF-SAC 2001-2003: II/3; SF-SAC 2004-2007: II/3; SF-SAC 2008-2009: II/3; SF-SAC 2010-2012: II/3; SF-SAC 2013-2015: II/3; SF-SAC 2016-2018: III/2/c; SF-SAC 2019-2021: III/2/c; SF-SAC 2022: III/2/c Census mapping: FINDINGS, SIGNIFICANTDEFICIENCY")
                           (format . "boolean")
                           (in . "query")
                           (name . "significant_deficiency")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings.type_requirement
                   .
                   #hasheq((description
                            .
                            "Type Requirement Failure   Data sources: SF-SAC 2013-2015: III/7/e; SF-SAC 2016-2018: III/4/f; SF-SAC 2019-2021: III/4/f; SF-SAC 2022: III/4/f Census mapping: FINDINGS, TYPEREQUIREMENT")
                           (format . "character varying")
                           (in . "query")
                           (name . "type_requirement")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings_text.audit_year
                   .
                   #hasheq((description
                            .
                            "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: FINDINGSTEXT, AUDITYEAR")
                           (format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings_text.charts_tables
                   .
                   #hasheq((description
                            .
                            "Indicates whether or not the text contained charts or tables that could not be entered due to formatting restrictions   Census mapping: FINDINGSTEXT, CHARTSTABLES")
                           (format . "boolean")
                           (in . "query")
                           (name . "charts_tables")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings_text.dbkey
                   .
                   #hasheq((description
                            .
                            "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: FINDINGSTEXT, DBKEY")
                           (format . "character varying")
                           (in . "query")
                           (name . "dbkey")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings_text.finding_ref_number
                   .
                   #hasheq((description
                            .
                            "Audit Finding Reference Number   Data sources: SF-SAC 2019-2021: III/5/a; SF-SAC 2022: III/5/a Census mapping: FINDINGSTEXT, FINDINGREFNUMS")
                           (format . "character varying")
                           (in . "query")
                           (name . "finding_ref_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings_text.general_id
                   .
                   #hasheq((format . "bigint[]")
                           (in . "query")
                           (name . "general_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings_text.id
                   .
                   #hasheq((description . "ID   ")
                           (format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings_text.is_public
                   .
                   #hasheq((description
                            .
                            "True for public records, False for non-public records   ")
                           (format . "boolean")
                           (in . "query")
                           (name . "is_public")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings_text.sequence_number
                   .
                   #hasheq((description
                            .
                            "Order that the findings text was reported   Census mapping: FINDINGSTEXT, SEQ_NUMBER")
                           (format . "integer")
                           (in . "query")
                           (name . "sequence_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_findings_text.text
                   .
                   #hasheq((description
                            .
                            "Content of the finding text   Data sources: SF-SAC 2019-2021: III/5/b; SF-SAC 2022: III/5/b Census mapping: FINDINGSTEXT, TEXT")
                           (format . "text")
                           (in . "query")
                           (name . "text")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.audit_period_covered
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "audit_period_covered")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.audit_type
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "audit_type")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.audit_year
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_addl_duns_list
                   .
                   #hasheq((format . "character varying[]")
                           (in . "query")
                           (name . "auditee_addl_duns_list")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_addl_ein_list
                   .
                   #hasheq((format . "integer[]")
                           (in . "query")
                           (name . "auditee_addl_ein_list")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_addl_uei_list
                   .
                   #hasheq((format . "character varying[]")
                           (in . "query")
                           (name . "auditee_addl_uei_list")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_address_line_1
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_address_line_1")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_certified_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "auditee_certified_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_certify_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_certify_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_certify_title
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_certify_title")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_city
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_city")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_contact_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_contact_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_contact_title
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_contact_title")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_duns
                   .
                   #hasheq((format . "character varying[]")
                           (in . "query")
                           (name . "auditee_duns")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_ein
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "auditee_ein")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_email
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_email")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_phone
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "auditee_phone")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_state
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_state")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_uei
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_uei")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditee_zip
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_zip")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_address_line_1
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_address_line_1")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_certified_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "auditor_certified_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_city
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_city")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_contact_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_contact_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_contact_title
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_contact_title")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_country
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_country")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_ein
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "auditor_ein")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_email
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_email")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_firm_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_firm_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_foreign_addr
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_foreign_addr")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_phone
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "auditor_phone")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_state
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_state")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.auditor_zip
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditor_zip")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.cfac_report_id
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "cfac_report_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.cfac_version
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "cfac_version")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.cognizant_agency
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "cognizant_agency")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.condition_or_deficiency_major_program
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "condition_or_deficiency_major_program")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.create_date
                   .
                   #hasheq((format . "timestamp with time zone")
                           (in . "query")
                           (name . "create_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.current_or_former_findings
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "current_or_former_findings")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.data_source
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "data_source")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.date_published
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "date_published")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.date_received
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "date_received")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.dbkey
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "dbkey")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.dollar_threshold
                   .
                   #hasheq((format . "double precision")
                           (in . "query")
                           (name . "dollar_threshold")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.ein_subcode
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "ein_subcode")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.entity_type
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "entity_type")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.fac_accepted_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fac_accepted_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.federal_agency_prefix
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "federal_agency_prefix")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.federal_award_extension
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "federal_award_extension")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.form_date_received
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "form_date_received")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.fy_end_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_end_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.fy_start_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_start_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_auditee_address_line_2
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "hist_auditee_address_line_2")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_auditee_fax
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "hist_auditee_fax")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_auditor_address_line_2
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "hist_auditor_address_line_2")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_auditor_fax
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "hist_auditor_fax")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_completed_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "hist_completed_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_component_date_received
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "hist_component_date_received")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_previous_completed_on
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "hist_previous_completed_on")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_previous_date_published
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "hist_previous_date_published")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_reportable_condition
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "hist_reportable_condition")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.hist_type_of_entity
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "hist_type_of_entity")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.id
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.initial_date_received
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "initial_date_received")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.is_duplicate_reports
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_duplicate_reports")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.is_going_concern
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_going_concern")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.is_low_risk
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_low_risk")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.is_material_noncompliance
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_material_noncompliance")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.is_material_weakness
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_material_weakness")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.is_public
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_public")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.is_significant_deficiency
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_significant_deficiency")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.is_special_framework_required
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_special_framework_required")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.material_weakness
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "material_weakness")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.material_weakness_major_program
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "material_weakness_major_program")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.modified_date
                   .
                   #hasheq((format . "timestamp with time zone")
                           (in . "query")
                           (name . "modified_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.multiple_auditors
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "multiple_auditors")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.multiple_duns
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "multiple_duns")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.multiple_ein
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "multiple_ein")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.multiple_uei
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "multiple_uei")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.number_months
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "number_months")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.oversight_agency
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "oversight_agency")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.pdf_url
                   .
                   #hasheq((format . "character varying[]")
                           (in . "query")
                           (name . "pdf_url")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.prior_year_schedule
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "prior_year_schedule")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.questioned_costs
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "questioned_costs")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.report_id
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "report_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.report_required
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "report_required")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.special_framework
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "special_framework")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.suppression_code
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "suppression_code")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.total_fed_expenditures
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "total_fed_expenditures")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.type_audit_code
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "type_audit_code")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.type_report_financial_statements
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "type_report_financial_statements")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.type_report_major_program
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "type_report_major_program")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_general.type_report_special_purpose_framework
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "type_report_special_purpose_framework")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.audit_year
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.auditee_ein
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "auditee_ein")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.auditee_uei
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "auditee_uei")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.content
                   .
                   #hasheq((format . "text")
                           (in . "query")
                           (name . "content")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.fy_end_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_end_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.fy_start_date
                   .
                   #hasheq((format . "date")
                           (in . "query")
                           (name . "fy_start_date")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.id
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.note_index
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "note_index")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.note_seq_number
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "note_seq_number")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.note_title
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "note_title")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.report_id
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "report_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_note.type_id
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "type_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_passthrough.audit_id
                   .
                   #hasheq((format . "integer")
                           (in . "query")
                           (name . "audit_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_passthrough.audit_year
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_passthrough.dbkey
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "dbkey")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_passthrough.general_id
                   .
                   #hasheq((format . "bigint[]")
                           (in . "query")
                           (name . "general_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_passthrough.id
                   .
                   #hasheq((format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_passthrough.is_public
                   .
                   #hasheq((format . "boolean")
                           (in . "query")
                           (name . "is_public")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_passthrough.passthrough_id
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "passthrough_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_passthrough.passthrough_name
                   .
                   #hasheq((format . "character varying")
                           (in . "query")
                           (name . "passthrough_name")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.audit_info
                   .
                   #hasheq((description
                            .
                            "Indicates what items on the Audit Info page were edited during the revision   Census mapping: REVISIONS, AUDITINFO")
                           (format . "character varying")
                           (in . "query")
                           (name . "audit_info")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.audit_info_explain
                   .
                   #hasheq((description
                            .
                            "Explanation of what items on the Audit Info page were edited during the revision   Census mapping: REVISIONS, AUDITINFO_EXPLAIN")
                           (format . "text")
                           (in . "query")
                           (name . "audit_info_explain")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.audit_year
                   .
                   #hasheq((description
                            .
                            "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: REVISIONS, AUDITYEAR")
                           (format . "character varying")
                           (in . "query")
                           (name . "audit_year")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.cap
                   .
                   #hasheq((description
                            .
                            "Indicates what items on the CAP Text page were edited during the revision   Census mapping: REVISIONS, CAP")
                           (format . "character varying")
                           (in . "query")
                           (name . "cap")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.cap_explain
                   .
                   #hasheq((description
                            .
                            "Explanation of what items on the CAP Text page were edited during the revision   Census mapping: REVISIONS, CAP_EXPLAIN")
                           (format . "text")
                           (in . "query")
                           (name . "cap_explain")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.dbkey
                   .
                   #hasheq((description
                            .
                            "Audit Year and DBKEY (database key) combined make up the primary key.   Census mapping: REVISIONS, DBKEY")
                           (format . "character varying")
                           (in . "query")
                           (name . "dbkey")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.federal_awards
                   .
                   #hasheq((description
                            .
                            "Indicates what items on the Federal Awards page were edited during the revision   Census mapping: REVISIONS, FEDERALAWARDS")
                           (format . "character varying")
                           (in . "query")
                           (name . "federal_awards")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.federal_awards_explain
                   .
                   #hasheq((description
                            .
                            "Explanation of what items on the Federal Awards page were edited during the revision   Census mapping: REVISIONS, FEDERALAWARDS_EXPLAIN")
                           (format . "text")
                           (in . "query")
                           (name . "federal_awards_explain")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.findings
                   .
                   #hasheq((description
                            .
                            "Indicates what items on the Findings page were edited during the revision   Census mapping: REVISIONS, FINDINGS")
                           (format . "character varying")
                           (in . "query")
                           (name . "findings")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.findings_explain
                   .
                   #hasheq((description
                            .
                            "Explanation of what items on the Findings page were edited during the revision   Census mapping: REVISIONS, FINDINGS_EXPLAIN")
                           (format . "text")
                           (in . "query")
                           (name . "findings_explain")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.findings_text
                   .
                   #hasheq((description
                            .
                            "Indicates what items on the Text of the Audit Findings page were edited during the revision   Census mapping: REVISIONS, FINDINGSTEXT")
                           (format . "character varying")
                           (in . "query")
                           (name . "findings_text")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.findings_text_explain
                   .
                   #hasheq((description
                            .
                            "Explanation of what items on the Text of the Audit Findings page were edited during the revision   Census mapping: REVISIONS, FINDINGSTEXT_EXPLAIN")
                           (format . "text")
                           (in . "query")
                           (name . "findings_text_explain")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.general_id
                   .
                   #hasheq((format . "bigint[]")
                           (in . "query")
                           (name . "general_id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.general_info
                   .
                   #hasheq((description
                            .
                            "Indicates what items on the General Info page were edited during the revision   Census mapping: REVISIONS, GENINFO")
                           (format . "character varying")
                           (in . "query")
                           (name . "general_info")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.general_info_explain
                   .
                   #hasheq((description
                            .
                            "Explanation of what items on the General Info page were edited during the revision   Census mapping: REVISIONS, GENINFO_EXPLAIN")
                           (format . "text")
                           (in . "query")
                           (name . "general_info_explain")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.id
                   .
                   #hasheq((description . "ID   ")
                           (format . "bigint")
                           (in . "query")
                           (name . "id")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.is_public
                   .
                   #hasheq((description
                            .
                            "True for public records, False for non-public records   ")
                           (format . "boolean")
                           (in . "query")
                           (name . "is_public")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.notes_to_sefa
                   .
                   #hasheq((description
                            .
                            "Indicates what items on the Notes to Schedule of Expenditures of Federal Awards (SEFA) page were edited during the revision   Census mapping: REVISIONS, NOTESTOSEFA")
                           (format . "character varying")
                           (in . "query")
                           (name . "notes_to_sefa")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.notes_to_sefa_explain
                   .
                   #hasheq((description
                            .
                            "Explanation of what items on the Notes to Schedule of Expenditures of Federal Awards (SEFA) page were edited during the revision   Census mapping: REVISIONS, NOTESTOSEFA_EXPLAIN")
                           (format . "text")
                           (in . "query")
                           (name . "notes_to_sefa_explain")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.other
                   .
                   #hasheq((description
                            .
                            "Indicates what other miscellaneous items were edited during the revision   Census mapping: REVISIONS, OTHER")
                           (format . "character varying")
                           (in . "query")
                           (name . "other")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.other_explain
                   .
                   #hasheq((description
                            .
                            "Explanation of what other miscellaneous items were edited during the revision   Census mapping: REVISIONS, OTHER_EXPLAIN")
                           (format . "text")
                           (in . "query")
                           (name . "other_explain")
                           (required . #f)
                           (type . "string")))
                  (rowFilter.vw_revision.revision_id
                   .
                   #hasheq((description
                            .
                            "Internal Unique Identifier for the record   Census mapping: REVISIONS, ELECRPTREVISIONID")
                           (format . "integer")
                           (in . "query")
                           (name . "revision_id")
                           (required . #f)
                           (type . "string")))
                  (select
                   .
                   #hasheq((description . "Filtering Columns")
                           (in . "query")
                           (name . "select")
                           (required . #f)
                           (type . "string")))))
         (paths
          .
          #hasheq((/
                   .
                   #hasheq((get
                            .
                            #hasheq((produces
                                     .
                                     ("application/openapi+json"
                                      "application/json"))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")))))
                                    (summary
                                     .
                                     "OpenAPI description (this document)")
                                    (tags . ("Introspection"))))))
                  (/vw_auditee
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_certify_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_certify_title"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_contact"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_email"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_fax"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_name_title"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_phone"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_title"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_street1"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_street2"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_city"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_state"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.auditee_zip_code"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.duns_list"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.uei_list"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.is_public"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.ein_subcode"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.ein_list"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.general_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditee.dbkey"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_auditee")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (summary
                                     .
                                     "Information about the entity undergoing the audit")
                                    (tags . ("vw_auditee"))))))
                  (/vw_auditor
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_phone"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_fax"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_state"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_city"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_title"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_street1"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_street2"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_zip_code"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_contact"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_email"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_firm_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_ein"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.sequence_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.is_public"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_country"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.cpa_foreign"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.general_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_auditor.secondary_auditor_general_id"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_auditor")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (summary
                                     .
                                     "Information about the Auditing CPA firm conducting the audit")
                                    (tags . ("vw_auditor"))))))
                  (/vw_cap_text
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.auditee_uei"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.auditee_ein"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.fy_start_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.fy_end_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.report_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.finding_ref_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.charts_tables"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_cap_text.cap_text"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_cap_text")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (tags . ("vw_cap_text"))))))
                  (/vw_federal_award
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.auditee_uei"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.auditee_ein"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.fy_start_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.fy_end_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.report_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.award_seq_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.federal_agency_prefix"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.federal_award_extension"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.additional_award_identification"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.federal_program_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.amount_expended"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.cluster_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.state_cluster_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.other_cluster_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.cluster_total"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.federal_program_total"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.is_loan"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.loan_balance_at_audit_period_end"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.is_direct"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.is_major"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.mp_audit_report_type"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.findings_count"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.passthrough_award"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.passthrough_amount"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_federal_award.type_requirement"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_federal_award")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (tags . ("vw_federal_award"))))))
                  (/vw_finding
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.auditee_uei"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.auditee_ein"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.fy_start_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.fy_end_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.federal_agency_prefix"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.federal_award_extension"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.report_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.award_seq_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.finding_seq_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.finding_ref_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.prior_finding_ref_numbers"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.modified_opinion"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.other_non_compliance"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.is_material_weakness"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.is_significant_deficiency"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.other_findings"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.questioned_costs"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.repeat_finding"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding.type_requirement"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_finding")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (tags . ("vw_finding"))))))
                  (/vw_finding_text
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.auditee_uei"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.auditee_ein"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.fy_start_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.fy_end_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.report_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.finding_ref_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.charts_tables"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_finding_text.finding_text"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_finding_text")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (tags . ("vw_finding_text"))))))
                  (/vw_findings
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.modified_opinion"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.other_non_compliance"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.material_weakness"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.significant_deficiency"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.other_findings"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.questioned_costs"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.repeat_finding"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.finding_ref_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.prior_finding_ref_numbers"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.type_requirement"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.audit_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.audit_findings_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.dbkey"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.is_public"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.findings_text_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings.general_id"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_findings")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (summary . "A finding from the audit")
                                    (tags . ("vw_findings"))))))
                  (/vw_findings_text
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings_text.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings_text.charts_tables"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings_text.finding_ref_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings_text.sequence_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings_text.text"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings_text.dbkey"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings_text.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings_text.is_public"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_findings_text.general_id"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_findings_text")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (summary . "Specific findings details")
                                    (tags . ("vw_findings_text"))))))
                  (/vw_general
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.report_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_certify_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_certify_title"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_contact_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_email"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_auditee_fax"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_phone"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_contact_title"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_address_line_1"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_auditee_address_line_2"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_city"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_state"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_ein"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.multiple_ein"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_duns"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.multiple_duns"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_uei"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.multiple_uei"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_addl_uei_list"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_addl_ein_list"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_addl_duns_list"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.ein_subcode"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_zip"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_phone"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_auditor_fax"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_state"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_city"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_contact_title"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_address_line_1"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_auditor_address_line_2"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_zip"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_country"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_contact_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_email"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_firm_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_foreign_addr"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_ein"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.multiple_auditors"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.pdf_url"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.cognizant_agency"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.oversight_agency"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditee_certified_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.auditor_certified_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.date_published"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.fac_accepted_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.form_date_received"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.initial_date_received"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.date_received"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.fy_end_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.fy_start_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_previous_completed_on"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_previous_date_published"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_completed_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_component_date_received"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.audit_type"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_reportable_condition"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.is_significant_deficiency"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.is_material_weakness"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.condition_or_deficiency_major_program"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.current_or_former_findings"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.dollar_threshold"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.is_duplicate_reports"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.entity_type"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.is_going_concern"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.is_low_risk"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.is_material_noncompliance"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.material_weakness"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.material_weakness_major_program"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.number_months"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.audit_period_covered"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.prior_year_schedule"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.questioned_costs"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.report_required"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.special_framework"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.is_special_framework_required"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.total_fed_expenditures"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.hist_type_of_entity"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.type_report_financial_statements"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.type_report_major_program"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.type_report_special_purpose_framework"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.suppression_code"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.type_audit_code"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.cfac_report_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.cfac_version"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.dbkey"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.is_public"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.modified_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.create_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.data_source"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.federal_agency_prefix"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_general.federal_award_extension"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_general")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (tags . ("vw_general"))))))
                  (/vw_note
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.auditee_uei"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.auditee_ein"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.fy_start_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.fy_end_date"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.report_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.note_seq_number"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.type_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.note_index"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.content"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_note.note_title"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_note")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (tags . ("vw_note"))))))
                  (/vw_passthrough
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_passthrough.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_passthrough.passthrough_name"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_passthrough.passthrough_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_passthrough.audit_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_passthrough.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_passthrough.dbkey"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_passthrough.is_public"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_passthrough.general_id"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_passthrough")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (summary
                                     .
                                     "The pass-through entity information, when it is not a direct federal award")
                                    (tags . ("vw_passthrough"))))))
                  (/vw_revision
                   .
                   #hasheq((get
                            .
                            #hasheq((parameters
                                     .
                                     (#hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.findings"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.revision_id"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.federal_awards"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.general_info_explain"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.federal_awards_explain"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.notes_to_sefa_explain"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.audit_info_explain"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.findings_explain"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.findings_text_explain"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.cap_explain"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.other_explain"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.audit_info"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.notes_to_sefa"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.findings_text"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.cap"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.other"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.general_info"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.audit_year"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.dbkey"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.is_public"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rowFilter.vw_revision.general_id"))
                                      #hasheq(($ref . "#/parameters/select"))
                                      #hasheq(($ref . "#/parameters/order"))
                                      #hasheq(($ref . "#/parameters/range"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/rangeUnit"))
                                      #hasheq(($ref . "#/parameters/offset"))
                                      #hasheq(($ref . "#/parameters/limit"))
                                      #hasheq(($ref
                                               .
                                               "#/parameters/preferCount"))))
                                    (responses
                                     .
                                     #hasheq((|200|
                                              .
                                              #hasheq((description . "OK")
                                                      (schema
                                                       .
                                                       #hasheq((items
                                                                .
                                                                #hasheq(($ref
                                                                         .
                                                                         "#/definitions/vw_revision")))
                                                               (type
                                                                .
                                                                "array")))))
                                             (|206|
                                              .
                                              #hasheq((description
                                                       .
                                                       "Partial Content")))))
                                    (summary
                                     .
                                     "Documents what was revised on the associated form from the previous version")
                                    (tags . ("vw_revision"))))))))
         (produces
          .
          ("application/json" "application/vnd.pgrst.object+json" "text/csv"))
         (schemes . ("http"))
         (swagger . "2.0"))
