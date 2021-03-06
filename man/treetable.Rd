% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TT.r
\name{treetable}
\alias{treetable}
\title{Display tree structured data using 'datatable' widget}
\usage{
treetable(data, color = "#0177A5", colnames = list(), ...)
}
\arguments{
\item{data}{data.tree object. \code{treetable} will extract all arguments in
alphabetical order - these will be a columns. For renaming and ordering of
the columns see colnames.}

\item{color}{base color (hue) to color the table. Each level will differ with
saturation and luminosity.}

\item{colnames}{if \code{list()} of characters provided, arguments of
data.tree (columns) will be renamed. If \code{vector()} provided, columns
will be renamed as for list input, additionally columns will be reordered
according to vector level after renaming.}

\item{...}{\link[DT]{datatable} parameters}
}
\value{
Return 'HTML' widget using the 'JavaScript' library 'DataTables'
}
\description{
Wrapper of 'datatable' widget, allowing display of 'data.tree'
objects. All arguments of the 'data.tree' become columns and each node is a
row. Adds column with buttons allowing folding and unfolding the levels.
}
\details{
Package consist of treetable function (wrapper of 'datatable') that
convert data.tree object to 'dataframe' and 'JS' callback function called
after creating the table. Treetable function ads hidden columns used by 'JS'
for formatting and folding/unfolding level rows. Hidden columns shall be
completely transparent for user \cr
Package also include 'DT::format...' functions wrappers, which are working
exactly as originals, but are necessary to protect special (helper) columns
used by 'JS' callback function for formatting.

Color formatting is done by 'kolorWheel' 'JS' script done by Zalka Erno\cr
e-mail: ern0[at]linkbroker.hu\cr
\url{http://linkbroker.hu/stuff/kolorwheel.js/}
}
\examples{
data("org")
data("col_order")
colnames <- factor(c("org",org$attributesAll),
                   levels =  col_order)
treetable(org, color="#FFFFFF", colnames=colnames)

# still datatable works as expected when data.frame provided
treetable(data.frame(
     date = seq(as.Date("2015-01-01"), by = "day", length.out = 5), x = 1:5))

}
\references{
\url{https://github.com/zielaskowski/tree-table}
}
\seealso{
\code{\link{datatable}}\cr
\code{\link{data.tree}}
}
