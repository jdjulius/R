#VECTORES
x1 = c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y1 = c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)

#INCISO A
#Ordene los elementos del vector en orden creciente

sort(x1)
sort(y1)

#INCISO B
#Ordene los elementos del vector en orden decreciente

sort(x1, decreasing = TRUE)
sort(y1, decreasing = TRUE)

#INCISO C
#Calcule las medias aritmeticas de x1 y y1

media_x1 <- mean(x1)
media_x1

media_y1 <- mean(y1)
media_y1

#INCISO D
#Calcule las desviaciones estandar de x1 y y1, usando la siguiente formula:

S_x1= sqrt(sum((x1[!is.na(x1)] - mean(x1,na.rm = TRUE))**2)/(length(x1[!is.na(x1)])-1))
S_x1

S_y1= sqrt(sum((y1[!is.na(y1)] - mean(y1,na.rm = TRUE))**2)/(length(y1[!is.na(y1)])-1))
S_y1

#INCISO E
#Calcule la covarianza entre x1 y y1, usando la siguiente formula:

cv_xy = sum((x1-media_x1)*(y1-media_y1))/((length(x1)+length(y1))-1)
cv_xy

#INCISO F
#Calcule el coeficiente de correlaciOn entre x1 y y1, usando la siguiente formula:

r_xy <-  cv_xy/(S_x1*S_y1)
r_xy

#INCISO G
#Calcule la mediana de x1

median(x1)
median(y1)



