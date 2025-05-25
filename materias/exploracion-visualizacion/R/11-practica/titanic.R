library(dplyr)
library(ggplot2)
library(ggthemes)
library(hrbrthemes)
library(plotly)
library(tidyr)
library(tidyverse)
library(scales)
library(mice)


setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/11-practica")
titanic <- read.csv("titanic.csv")
titanic %>% head(10)

# convierto a factor para agrupas
# Survived (puede ser 0 ó 1, es cualitativa nominal)
# Pclass (puede ser 1, 2 ó 3, es cualitativa ordinal)
# Embarked (puede ser S, C o Q, es cualitativa nominal)
titanic <- titanic %>% mutate(across(c(Survived, Pclass, Embarked), factor))

ggplotly(titanic %>% ggplot(aes(x = Pclass, fill=Survived)) + 
           geom_bar() + 
           scale_fill_manual(values=c("green4", "purple4")) + 
           theme_bw() + 
           ylab("Cantidad"))

ggplotly(titanic %>% ggplot(aes(x = Pclass, fill=Survived)) + 
           geom_bar(position = "dodge") + 
           scale_fill_manual(values=c("green4", "purple4")) + 
           theme_bw() + 
           ylab("Cantidad"))

# fill: calcula proporción
ggplotly(titanic %>% ggplot(aes(x = Pclass, fill=Survived)) + 
           geom_bar(position = "fill") + 
           scale_fill_manual(values=c("green4", "purple4")) + 
           theme_bw() + 
           ylab("Cantidad"))

ggplotly(titanic %>% ggplot(aes(x = Pclass, fill=Survived)) + 
           geom_bar() + 
           scale_fill_manual(values=c("green4", "purple4")) + 
           theme_bw() + 
           ylab("Cantidad") +
           facet_grid(. ~ Sex))

titanic <- titanic %>% mutate(categoria = as.factor(ifelse(Age < 18, "joven", "adulto"))) %>% 
  mutate(categoria=fct_relevel(categoria, c("joven", "adulto")))

ggplotly(titanic %>% ggplot(aes(x = categoria, fill=Survived)) + 
           geom_bar() + 
           theme_bw() + 
           facet_grid(. ~ Sex))

titanic %>% ggplot(aes(Age, fill=Pclass)) + 
  geom_boxplot() + 
  theme_bw()

titanic %>% ggplot(aes(x = Fare)) +
  geom_density(fill = '#99d6ff', alpha=0.2) + 
  geom_vline(aes(xintercept=median(Fare, na.rm=T)),
             colour='red', linetype='dashed', lwd=0.8) +
  scale_x_continuous(labels=dollar_format()) +
  theme_bw()

titanic %>% filter(!is.na(Embarked)) %>% ggplot(aes(x=Fare, group=Embarked, fill=Embarked)) +
  geom_density(adjust=1.5, alpha=.4) +
  theme_ipsum()

titanic %>% ggplot(aes(Age)) + geom_histogram(bins=10, colour = 4, fill = "green") + 
  theme_bw() + 
  facet_grid(. ~ Survived)

titanic %>% ggplot(aes(Age)) + 
  geom_histogram(bins=10, colour = 4, fill = "green") + 
  theme_bw() + 
  facet_grid(Survived ~ Pclass + Sex)

ggplotly(titanic %>% 
           ggplot(aes(Age, Fare,
                      color = Survived)) +
           geom_point() +
           scale_size(range = c(1, 5)) +
           theme_ipsum())

sum(is.na(titanic$Age))
mice_mod <- mice(titanic[, !names(titanic) %in% c('PassengerId','Name','Ticket','Cabin','Survived')], method='rf')

# -------------------------------------------------------------

library(wordcloud2)
library(tm)

titanic <- titanic %>% mutate(apellido = sapply(Name, function(x) strsplit(x, split = '[,.]')[[1]][1]))

nube <- titanic %>% 
  group_by(apellido) %>% 
  count() %>% 
  rename(word = apellido, freq = n) %>% 
  mutate(word = as.factor(word)) %>% 
  filter(freq > 1)

nube <- as.data.frame(nube)
rownames(nube) <- nube$word

wordcloud2(data=nube, size = .2, shape = 'circle')