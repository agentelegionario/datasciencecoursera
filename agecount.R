agecount <- function(age = NULL) {
## Check that "age" is non-NULL; else throw error
## Read "homicides.txt" data file
## Extract ages of victims; ignore records where no age is
## given
## Return integer containing count of homicides for that age

	homicides = readLines("homicides.txt")
	length(grep(paste(age, "years old",sep=" "),homicides))
}