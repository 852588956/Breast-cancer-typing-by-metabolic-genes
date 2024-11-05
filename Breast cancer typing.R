
#输入你的数据，请按照示例数据test_tpm.txt的格式
mydata <- read.table("test_tpm.txt", header = T, row.names = 1, sep = "\t")


library("MOVICS")

load("marker.up.rda")

yau.ntp.pred <- runNTP(expr       = mydata,
                       templates  = marker.up$templates, s
                       scaleFlag  = TRUE, 
                       centerFlag = TRUE, 
                       doPlot     = TRUE, 
                       fig.name   = "NTP HEATMAP") 

classes <- yau.ntp.pred$clust.res

write.table(classes, "typing result.txt", sep = "\t", quote = F)
