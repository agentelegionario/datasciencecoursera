corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0

        ## Return a numeric vector of correlations

##for each file in the directory 
##  read the file 
##  find the number of complete cases in that file 
##  if the number of complete cases is greater than the threshold number then 
##    use R's built in cor function to calculate the correlation between sulfate and nitrate for that file 
##    stick the result of the cor function onto the end of a numeric vector
##  end if 
##next file 
##return the numeric vector 
	ans = c()
	cont = 1
	for ( i in 1:332){
		file = getmonitor(i,directory)
		##good = complete.cases(file)
		if(complete("specdata",i)[2] > threshold)
		{
			ans[cont] = cor(file[2],file[3],use="complete.obs")
			cont = cont + 1
		}
	}
	ans
}