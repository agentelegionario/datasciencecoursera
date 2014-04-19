simpleCap <- function(x) {
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2),
      sep="", collapse=" ")
}

count <- function(cause = NULL) {
## Check that "cause" is non-NULL; else throw error
## Check that specific "cause" is allowed; else throw error
## Read "homicides.txt" data file
## Extract causes of death
## Return integer containing count of homicides for that cause
	homicides = readLines("homicides.txt")
	length(grep(paste("[Cc]ause:", cause,sep=" "),homicides)) + length(grep(paste("[Cc]ause:", simpleCap(cause),sep=" "),homicides))
}