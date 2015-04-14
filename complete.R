complete <- function(directory, id = 1:332) {
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
  library(stringr)
  id2 <- str_pad(id,3,pad="0")
  id_str <- paste(directory, "/", id2, ".csv", sep = "")
  
  data <- sapply(id_str, read.csv, simplify=FALSE)
  clean_data<-lapply(data, function(x) x[complete.cases(x),])
  #b<-sapply(clean_data, nrow)#, simplify=TRUE, USE.NAMES=FALSE)
  b<-vapply(clean_data, nrow, integer(1), USE.NAMES=FALSE)#, simplify=TRUE, USE.NAMES=FALSE)
  #c<-c(1:length(b))
  #cbind(c,b)
  #b
  #f<-rbind(c(1:length(b), id, b))
  #f
  
  #prolly have to do a for loop and printf
          
  
}