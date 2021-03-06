% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-vaers_vax.R, R/vaers_vax.R
\docType{data}
\name{vaersvax}
\alias{vaersvax}
\alias{vaersvax-package}
\title{US Vaccine Adverse Event Reporting System (VAERS) vaccine data for Present}
\format{A data.table data frame with 19,016 rows and 8 variables:
\describe{
\item{VAERS_ID}{VAERS Identification Number}
\item{VAX_TYPE}{Administered Vaccine Type}
\item{VAX_MANU}{Vaccine Manufacturer}
\item{VAX_LOT}{Manufacturer's Vaccine Lot}
\item{VAX_DOSE}{Number of previous doses administered}
\item{VAX_ROUTE}{Vaccination Route}
\item{VAX_SITE}{Vaccination Site}
\item{VAX_NAME}{Vaccination Name}
}}
\source{
VAERS \url{https://vaers.hhs.gov/}
}
\usage{
vaersvax
}
\description{
A table containing the "remaining vaccine information (e.g., vaccine name,
manufacturer, lot number, route, site, and number of previous doses
administered), for each of the vaccines listed in Box 13 of the VAERS form.
There is a matching record in this file with the VAERSDATA file identified
by VAERS_ID."

vaersvax provides the US Vaccine Adverse Event Reporting System
(VAERS) vaccine data for the Present. "The Vaccine Adverse Event Reporting
System (VAERS) is a national early warning system to detect possible safety
problems in U.S.-licensed vaccines. VAERS is co-managed by the Centers for
Disease Control and Prevention (CDC) and the U.S. Food and Drug
Administration (FDA)." For more information about the data, visit
<https://vaers.hhs.gov/>. For information about vaccination/immunization
hazards, visit <http://www.questionuniverse.com/rethink.html#vaccine>.
}
\examples{
library("data.table")
vaersvax
}
\references{
US Centers for Disease Control and Prevention (CDC) and the US Food and Drug Administration (FDA) Vaccine Adverse Event Reporting System (VAERS) \url{https://vaers.hhs.gov/} and \url{https://vaers.hhs.gov/docs/VAERSDataUseGuide_October2017.pdf}.
}
