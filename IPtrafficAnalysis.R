#set the file path (modify to the location of your CSV file)
file_path <- "IN300_Dataset1.csv"

#read the CSV file
data <- read.csv(file_path, stringsAsFactors = FALSE)

#frequency count for Source IP
source_ip_freq <- as.data.frame(sort(table(data$Source), decreasing = TRUE))
colnames(source_ip_freq) <- c("Source IP", "Frequency")

#frequency count for Destination IP
destination_ip_freq <- as.data.frame(sort(table(data$Destination), decreasing = TRUE))
colnames(destination_ip_freq) <- c("Destination IP", "Frequency")

#frequency count for Protocol
protocol_freq <- as.data.frame(sort(table(data$Protocol), decreasing = TRUE))
colnames(protocol_freq) <- c("Protocol", "Frequency")

#display results vertically
cat("Source IP Frequency Count Descending Format:\n")
apply(source_ip_freq, 1, function(row) cat(row[1], "-", row[2], "\n"))

cat("\nDestination IP Frequency Count in Descending Format:\n")
apply(destination_ip_freq, 1, function(row) cat(row[1], "-", row[2], "\n"))

cat("\nProtocol Frequency Count in Descending Format:\n")
apply(protocol_freq, 1, function(row) cat(row[1], "-", row[2], "\n"))
