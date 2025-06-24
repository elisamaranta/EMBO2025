#Day 2b - EMBO PopGen

north <- matrix(
  c(0,1,1,0,1,0,0,0,0,1,1,0), nrow=4, ncol=3, byrow = TRUE
)

south <- matrix(
  c(0,0,0,0,0,0,0,0,0,0,1,0), nrow = 4, ncol = 3, byrow = TRUE
)

#derived allele frequencies
sum(north[,1])/4
sum(north[,2])/4
sum(north[,3])/4

sum(south[,1])/4
sum(south[,2])/4
sum(south[,3])/4

sfs <- matrix()

north_sf <- colSums(north)/4
n_sfs <- hist(north_sf, plot=FALSE, bins=0.25)
n_sfs$counts

colSums(south)/4
s_sfs <- hist(south_sf, plot=FALSE)
s_sfs$counts

#tajimas estimator
numSamples <- dim(north)[1]
pwSum <- 0

