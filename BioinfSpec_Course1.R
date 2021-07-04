## COURSE 1: FINDING HIDDEN MESSAGES IN DNA(BIONFORMATICS I)
## Created by: Juan P. Valencia-Arango
## Date: July 2021

## Description: This script develop all functions related to
## course material. All programming challenge were developed 
## here.

## Function 1--PatternCount-- ####
# Description: cuenta el número de veces que un k-mer aparece
#              en un string.
# Input: Text: string completo con los nucleotidos.
#        Pattern: string que se quiere encontrar en el text.
# Output: Count: número entero con el total de veces que se encontró
#         el Pattern en todo el Text.
jpvafunc.PatternCount <- function(text,pattern){
  temp <- data.frame()
  for(i in 1:((nchar(text) - nchar(pattern))+1)){
    temp[i,1] <-ifelse(substr(text,start=i,stop=i+nchar(pattern)-1) == pattern,
                   1,0)
    }
  count <- sum(temp[,1])
  return(count)
}

## Function 2--FrequentWords-- ####
# Description: encuentra el k-mer más frecuente en toda la
#              cadena de texto dada.
# Input: Text: cadena de texto objetivo.
#        k: longitud del k-mer que se quiere encontrar.


