# vaersvax

US VAERS vaccine data for 01/01/2018 - 06/14/2018. If you want to explore the full VAERS data for 1990 - Present (data, symptoms, and vaccines), then check out the `vaers` package from [https://gitlab.com/iembry/vaers](https://gitlab.com/iembry/vaers). `vaers` is not hosted on CRAN due to the large size of the data set. "... The Vaccine Adverse Event Reporting System (VAERS) is a national early warning system to detect possible safety problems in U.S.-licensed vaccines. VAERS is co-managed by the Centers for Disease Control and Prevention (CDC) and the U.S. Food and Drug Administration (FDA). VAERS accepts and analyzes reports of adverse events (possible side effects) after a person has received a vaccination. Anyone can report an adverse event to VAERS. Healthcare professionals are required to report certain adverse events and vaccine manufacturers are required to report all adverse events that come to their attention. VAERS is a passive reporting system, meaning it relies on individuals to send in reports of their experiences to CDC and FDA. VAERS is not designed to determine if a vaccine caused a health problem, but is especially useful for detecting unusual or unexpected patterns of adverse event reporting that might indicate a possible safety problem with a vaccine. This way, VAERS can provide CDC and FDA with valuable information that additional work and evaluation is necessary to further assess a possible safety concern." Source: [VAERS - About Us](https://vaers.hhs.gov/about.html).

For information about vaccination/immunization hazards, visit [http://www.questionuniverse.com/rethink.html#vaccine](http://www.questionuniverse.com/rethink.html#vaccine).




# Installation

```R
install.packages("vaersvax")
```



# Examples
```R
install.load::load_package("vaersvax", "dplyr", "data.table", "pivottabler")
# load needed packages using the load_package function from the install.load package (it is assumed that you have already installed these packages)


## load vaersvax

data(vaersvax)



# 1) What are the counts for each of the VAX_TYPEs?

# use count from dplyr

count(vaersvax, VAX_TYPE)


# use .N and by from data.table
# ordered by ascending VAX_TYPE

vaersvax[, .N, by = VAX_TYPE][order(VAX_TYPE)]



# 2) How many reports of MMR as the VAX_TYPE?
nrow(vaersvax[VAX_TYPE == "MMR"])



# 3) Create a pivot table of this data.

pt <- PivotTable$new(processingLibrary="data.table")
pt$addData(vaersvax)
pt$addColumnDataGroups("VAX_DOSE_SERIES")
pt$addRowDataGroups("VAX_MANU")
pt$defineCalculation(calculationName = "TotalDeaths", summariseExpression = ".N")
pt$renderPivot()
```




# VAERS Data Disclaimer
[https://vaers.hhs.gov/data.html](https://vaers.hhs.gov/data.html):

"Disclaimer

Please note that VAERS staff follow-up on all serious and other selected adverse event reports to obtain additional medical, laboratory, and/or autopsy records to help understand the concern raised. However, in general coding terms in VAERS do not change based on the information received during the follow-up process. VAERS data should be used with caution as numbers and conditions do not reflect data collected during follow-up. Note that the inclusion of events in VAERS data does not imply causality.

For more information, please call the VAERFor more information, please call the VAERS Information Line toll-free at (800) 822-7967 or e-mail to info@vaers.org.S Information Line toll-free at (800) 822-7967 or e-mail to [info@vaers.org](info@vaers.org).

I have read and understand the preceding statement."
