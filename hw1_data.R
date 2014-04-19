file <- read.csv("data.csv")
bad <- is.na(file[1])
media <- sum(file[1][!bad])/sum(!bad)

file[1:4,]

good = file[5] == 5
lista = file[1][good]
bad = is.na(lista)
max(lista[!bad])











str(b <- file[1] > 31)
c <- file[4] >90
file[1][b]


data.frame(as.logical(b+c))
file["Solar.R"][data.frame(as.logical(b+c))]
b
bad2 = is.na(file["Solar.R"])
arq = file["Solar.R"][as.logical(b+c)]
arq
as.logical(b+c)
d = arq[as.logical(b+c)]
soma = sum(file[4][arq[as.logical(b+c)]])
soma
media = sum(
b
c
b * c
oz