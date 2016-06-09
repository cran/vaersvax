﻿# vaersvax

US VAERS vaccine data for 01/01/2016 - 04/14/2016. If you want to explore the full VAERS data for 1990 - Present (data, symptoms, and vaccines), then check out the vaers package from [https://gitlab.com/iembry/vaers](https://gitlab.com/iembry/vaers). vaers is not hosted on CRAN due to the large size of the data set. "VAERS is a national vaccine safety surveillance program co-sponsored by the US Centers for Disease Control and Prevention (CDC) and the US Food and Drug Administration (FDA). VAERS is a post-marketing safety surveillance program, collecting information about adverse events (possible side effects) that occur after the administration of vaccines licensed for use in the United States." Source: [VAERS](https://vaers.hhs.gov/index).

For information about vaccination/immunization hazards, visit [http://www.questionuniverse.com/rethink.html/#vaccine](http://www.questionuniverse.com/rethink.html/#vaccine).


# Installation

```R
install.packages("vaersvax")
```



# Examples
```R
library(vaersvax)
library(data.table)
library(dplyr)
library(rpivotTable)


## load vaersvax
data(vaersvax)

# What are the counts for each of the VAX_TYPEs?
count(vaersvax, VAX_TYPE)


# How many reports of MMR as the VAX_TYPE?
nrow(vaersvax[VAX_TYPE == "MMR"])

# Create a pivot table of this data.
rpivotTable(vaersvax)
```



# VAERS Data Disclaimer
[https://vaers.hhs.gov/data/data](https://vaers.hhs.gov/data/data) which redirects to [https://vaers.hhs.gov/data/index](https://vaers.hhs.gov/data/index) (The content below is from this second URL and is current as of 2 February 2016):

"VAERS Data

Guide to Interpreting VAERS Case Report Information

When evaluating data from VAERS, it is important to note that for any reported event, no cause-and-effect relationship has been established. Reports of all possible associations between vaccines and adverse events (possible side effects) are filed in VAERS. Therefore, VAERS collects data on any adverse event following vaccination, be it coincidental or truly caused by a vaccine. The report of an adverse event to VAERS is not documentation that a vaccine caused the event.

VAERS data contains coincidental events and those truly caused by vaccines.

More than 10 million vaccines per year are given to children less than 1 year old, usually between 2 and 6 months of age. At this age, infants are at greatest risk for certain medical adverse events, including high fevers, seizures, and sudden infant death syndrome (SIDS). Some infants will experience these medical events shortly after a vaccination by coincidence.

These coincidences make it difficult to know whether a particular adverse event resulted from a medical condition or from a vaccination. Therefore, vaccine providers are encouraged to report all adverse events following vaccination, whether or not they believe the vaccination was the cause.

Please read the following statement on the limits of VAERS data. You MUST click on the box below to access the VAERS database.
When reviewing data from VAERS, please keep in mind the following limitations:

VAERS is a passive reporting system, meaning that reports about adverse events are not automatically collected, but require a report to be filed to VAERS.  VAERS reports can be submitted voluntarily by anyone, including healthcare providers, patients, or family members. Reports vary in quality and completeness. They often lack details and sometimes can have information that contains errors.

"Underreporting" is one of the main limitations of passive surveillance systems, including VAERS. The term, underreporting refers to the fact that VAERS receives reports for only a small fraction of actual adverse events. The degree of underreporting varies widely. As an example, a great many of the millions of vaccinations administered each year by injection cause soreness, but relatively few of these episodes lead to a VAERS report. Physicians and patients understand that minor side effects of vaccinations often include this kind of discomfort, as well as low fevers.  On the other hand, more serious and unexpected medical events are probably more likely to be reported than minor ones, especially when they occur soon after vaccination, even if they may be coincidental and related to other causes.

A report to VAERS generally does not prove that the identified vaccine(s) caused the adverse event described.  It only confirms that the reported event occurred sometime after vaccine was given. No proof that the event was caused by the vaccine is required in order for VAERS to accept the report. VAERS accepts all reports without judging whether the event was caused by the vaccine.

DISCLAIMER:   Please note that VAERS staff follow-up on all serious and other selected adverse event reports to obtain additional medical, laboratory, and/or autopsy records to help understand the concern raised.  However, in general coding terms in VAERS do not change based on the information received during the follow-up process. VAERS data should be used with caution as numbers and conditions do not reflect data collected during follow-up.  Note that the inclusion of events in VAERS data does not imply causality.

For more information, please call the VAERS Information Line toll-free at (800) 822-7967 or e-mail to [info@vaers.org](info@vaers.org).

I have read and understand the preceding statement."
