#creates 'meta' dataframe
meta <- data.frame(
  sex = c('M', 'F', 'M', 'F', 'M', 'F', 'M', 'F', 'M', 'F', 'M', 'F'),
  stage = c('I', 'II', 'II', 'I', 'II', 'II', 'I', 'II', 'II', 'I', 'II', 'II'),
  treatment = c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'P', 'P', 'P', 'P'),
  myc = c(2343, 457, 4593, 9035, 3450, 3524, 958, 1053, 8674, 3424, 463, 5105)
)
#changes row names
rownames(meta) <- c('sample1', 'sample2', 'sample3', 'sample4', 'sample5', 'sample6', 'sample7', 'sample8', 'sample9', 'sample10', 'sample11', 'sample12')
print(meta)

#returns 'sex' and 'treatment' columns
questionI <- meta[,c(1,3)]
print(questionI)

#returns 'treatment' values for samples 5, 7, 9, and 10
questionII <- meta[c(5,7,9,10), c(3)]
print(questionII)

#returns all data for samples receiving treatment P
questionIII <- subset(meta, treatment == 'P')
print(questionIII)

#returns only stage and treatment columns for samples w/ myc > 5000
questionIV <- subset(meta, myc > 5000, select = c(stage, treatment))
print(questionIV)

#removes treatment column
questionV <- subset(meta, select = -treatment)
print(questionV)

#removes samples 7, 8 and 9
questionsVI <- meta[-c(7:9),]
print(questionsVI)

#removes all samples except samples 1-6
questionVII <- meta[-c(7:12),]
print(questionVII)

#adds column 'pre_treatment' to beginning of dataframe
pre_treatment <- c('T', 'F', 'F', 'F', 'T', 'T', 'F', 'T', 'F', 'F', 'T', 'T')
questionVIII <- cbind(pre_treatment, meta)
print(questionVIII)

#removes 'pre_treatment' and changes column names to “A”, “B”, “C”, “D”
questionIX <- meta
colnames(questionIX) <- c('A', 'B', 'C', 'D')
print(questionIX)