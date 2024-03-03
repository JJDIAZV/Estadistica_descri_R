####################################################################################################
#                ESTADISTICA DESCRIPTIVA
####################################################################################################


Notas<-c(15, 45, 47,53, 58, 58, 60, 62, 67, 74, 75, 78, 80, 80, 81, 85, 85, 85, 90, 92)
Notas

# Resumen de los cinco números

fivenum(Notas)

# Resumen de los cinco números más la media

summary(Notas)

#Rango
range(Notas)


#Media aritmética
Media<-mean(Notas)
Media

#Mediana

Mediana<-median(Notas)  
Mediana

#Desviación estándar

Desv_est<-sd(Notas)
Desv_est

#Varianza

Varianza<-var(Notas)
Varianza

#Coeficiente de variación

CV<-(Desv_est/Media)*100
CV

#Tamaño de la muestra

n<-length(Notas)
n


#Error estándar de la media

EE<-Desv_est/sqrt(n)
EE

#Objeto que contiene las estadísticas de resumen

Descriptiva<-data.frame(Media,Mediana,Desv_est,Varianza,CV,n,EE)
Descriptiva


#Para visualizar el objeto, ejecute

print(Descriptiva)


# Percentiles
quantile (Notas)
quantile(Notas, c(0.025,0.90,0.975))
IQR(Notas) #Rango Intercuartílico = Q3-Q1



# Asimetría y curtosis

install.packages('moments')
library(moments)

skewness(Notas)
kurtosis(Notas)



#Diagrama de tallos y hojas


?stem
stem(Notas)
stem(Notas, scale = 1, width = 80, atom = 1e-08)
pie(Notas)
library(ggplot2)

ggplot(Notas,aes(x="",y=porcentaje, fill=categorias))+
  geom_bar(stat = "identity",color="white")+
  coord_polar(theta="y")


