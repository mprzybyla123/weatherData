% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrapper_functions.R
\name{getWeatherForMultipleYears}
\alias{getWeatherForMultipleYears}
\title{For Multiple Years, fetch the weather data for a station}
\usage{
getWeatherForMultipleYears(station_id, start_year, end_year,
  station_type = "airportCode", opt_detailed = FALSE,
  opt_write_to_file = FALSE)
}
\arguments{
\item{station_id}{is a valid Weather Station ID
(example: "BUF", "ORD", "VABB" for Mumbai).
Valid Weather Station "id" values: "KFLMIAMI75" or "IMOSCOWO2" You can look these up
 at wunderground.com. You can get station_id's for a given location
 by calling \code{getStationCode()}}

\item{start_year}{is a valid year in the past (numeric, YYYY format)}

\item{end_year}{is a valid year in the past (numeric, YYYY format)}

\item{station_type}{= "airportCode" (3 or 4 letter airport code) or "ID" (Wx call Sign)}

\item{opt_detailed}{Boolen flag to indicate if detailed records for the station are desired.
(default FALSE). By default only one records per date is returned.}

\item{opt_write_to_file}{If TRUE, the resulting dataframe will be stored in a CSV file. 
Default is FALSE}
}
\value{
A data frame with each row containing: \itemize{
\item Date and Time stamp (for each date specified)
\item Temperature and/or other weather columns sought
}
}
\description{
Function will return a data frame with all the records
  for a given station_id for all the years requested. If the current year is supplied,
  it will return records until the current Sys.Date() ("today").
  This function will return a (fairly large) data frame. If you are going 
 to be using this data for future analysis, you can store the results in a CSV file
  by setting \code{opt_write_to_file} to be TRUE
}
\details{
Note that this function is a light wrapper for getWeatherForYear
}
\examples{
\dontrun{
dat <- getWeatherForMultipleYears("SFO", 2013, 2017)

# If opt_detailed is turned on, you will get a large data frame
wx_SF <- getWeatherForMultipleYears("SIN", 2014, 2017, opt_detailed=TRUE)
}
}
\references{
For a list of valid Weather Stations, try this format
 \url{http://www.wunderground.com/weatherstation/ListStations.asp?selectedCountry=United+States}
 and replace with your country of interest
}
