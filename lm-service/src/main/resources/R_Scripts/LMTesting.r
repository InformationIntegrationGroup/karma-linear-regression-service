args <- commandArgs(TRUE)
dataset <- read.csv(args[1])
modelFile <- args[2]
load(modelFile)
pred_label <- predict(LMModel, newdata = dataset, type = 'response')
print(pred_label)