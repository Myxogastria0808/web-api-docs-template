library(plumber)
library(loadings)
library(readr)

# Title
#* @apiTitle API Title
# Description
#* @apiDescription api description
# TOS link
#* @apiTOS
# Contact object
#* @apiContact list(name = "name", url = "url", email = "email")
# License object
#* @apiLicense list(name = "Apache 2.0", url = "https://www.apache.org/licenses/LICENSE-2.0.html")
# Version
#* @apiVersion 0.0.1
# Tag Description
#* @apiTag tag

#* @filter cors
cors <- function(req, res) {
    res$setHeader("Access-Control-Allow-Origin", "*")
    if (req$REQUEST_METHOD == "OPTIONS") {
        res$setHeader("Access-Control-Allow-Methods", "GET")
        res$setHeader(
        "Access-Control-Allow-Headers",
        req$HTTP_ACCESS_CONTROL_REQUEST_HEADERS
        )
        res$status <- 200
        return(list())
    } else {
        plumber::forward()
    }
}

#* endpoint name
#* endpoint description
#* @get /
function() {
    return("Hello, world!")
}
