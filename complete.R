complete <- function(directory, ids = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
	nobs = NULL
	id = NULL
	cont = 1
	for (i in ids){
		
		dado = getmonitor(i,directory)
		good = is.na(dado[2]*dado[3])
		nobs[cont] = nrow(data.frame(dado[2][!good]))
		id[cont] = i
		cont = cont +1
	}
	data.frame(cbind(id,nobs))
}