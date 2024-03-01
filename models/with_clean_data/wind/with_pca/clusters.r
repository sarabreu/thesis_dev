pca_df <- read.csv("models/with_clean_data/wind/with_pca/pca_df.csv")

print("csv file read")

pca_df <- pca_df[, 2:3]

library("NbClust")

print("running NbClust")
res <- NbClust(pca_df, min.nc = 2,
               max.nc = 6, method = "kmeans", index = "silhouette")

print(res$All.index)
print(res$Best.nc)
print(res$All.CriticalValues)
print(res$Best.partition)