
results <- read.csv("results.csv")

goles_local_ES <- subset(results, results$home_team == 'Spain')$home_score

barplot(table(goles_local_ES), xlab = 'Número goles', 
        ylab = 'Número partidos', main = "Goles de España como local")
hist(goles_local_ES, freq = FALSE, breaks = 'FD')

pdf("Graficos_goles.pdf")
barplot(table(goles_local_ES), xlab = 'Número goles', 
        ylab = 'Número partidos', main = "Goles de España como local")
hist(goles_local_ES, freq = FALSE, breaks = 'FD')
dev.off()
