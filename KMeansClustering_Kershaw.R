#####################################
# K-Means Clustering                #
# Clayton Kershaw Pitch Types, 2015 #
#####################################


# read data
Kershaw = read.csv("KershawPitches.csv")


# k-means cluster into 3 groups
kmc = kmeans(KershawPitches[2:4], 3)

kmc


# check clusters vs. pitch_types found in original data set
table(KershawPitches$pitch_type, kmc$cluster)


# plot horiz break vs. vert break, colored by cluster
plot(KershawPitches$pfx_x, KershawPitches$pfx_z, col=kmc$cluster, 
     xlab = "Horizontal Break", ylab = "Vertical Break", main = "Clayton Kershaw Pitch Types", 
     pch = 16)
