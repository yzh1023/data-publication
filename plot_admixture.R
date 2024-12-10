# Load necessary libraries
library(ggplot2)
library(reshape2)

# Read the Q file
data <- read.table("~/spring.3.Q") # Replace with actual file
data <- as.data.frame(data)
colnames(data) <- c("Pop1", "Pop2", "Pop3") # Adjust for K

# Add individual IDs
data$Individual <- paste("Ind", 1:nrow(data), sep = "")

# Sort individuals by the population with the highest proportion
data$MaxPop <- apply(data[, 1:3], 1, which.max) # Find the max population for each individual
data <- data[order(data$MaxPop, -data$Pop1, -data$Pop2, -data$Pop3), ] # Sort by group and proportion

# Remove MaxPop column after sorting
data$MaxPop <- NULL

# Melt the data for ggplot
data_melted <- melt(data, id.vars = "Individual")

# Define custom colors for populations
custom_colors <- c("#66c2a5", "#fc8d62", "#8da0cb")

# Plot
p1 <- ggplot(data_melted_spring, aes(x = factor(Individual, levels = unique(Individual)), 
                        y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "stack", width = 1) +
  scale_fill_manual(values = custom_colors) +
  theme_minimal() +
  labs(x = NULL, y = "Ancestry Proportion", fill = "Population") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        legend.position= "none", 
        panel.grid = element_blank()) 

p2 <- ggplot(data_melted_winter, aes(x = factor(Individual, levels = unique(Individual)), 
                 y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "stack", width = 1) +
  scale_fill_manual(values = custom_colors) +
  theme_minimal() +
  labs(x = NULL, y = "Ancestry Proportion", fill = "Population") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        legend.position= "none", 
        panel.grid = element_blank()) 
		
p1 / p2 + plot_annotation(tag_levels = 'A')
