
#GUIA DE EJERCICIOS 1

#PREGUNTA 1
  #INCISO A
  #Genere un vector que contenga la siguiente secuencia de numeros: 1, 2, 3, ..., 10

    #forma 1 - from 1, to 10, ++1
    seq(1,10,1) 
    
    #forma2 - 20 numeros entre 1a 10 con la misma distancia
    seq(1,10,length.out = 20) 
    
    #forma3 - secuencia de 1 a 10
    seq(10)
    
    #forma4 - concatenacion para formar un vector
    c(1,2,3,4,5,6,7,8,9,10)
    
  #INCISO B
  #Asigne el vector creado a x, determine su tipo y dimension.
    
    x1 <- seq(1,10,1)
    x1
    
    x2 = seq(1,10,1)
    x2
    
    length(x1)
    typeof(x3)
  
  #INSISO C
  #Calcule la suma y el producto de los elementos del vector x
    
    t = sum(x1)
    prod(x1)
    
  #INCISO D  
  # Calcule la suma acumulada y el producto acumulado de los elementos del vector x
    
    cumsum(x1)
    cumprod(x1)
    
  #INCISO E
  # Construya un vector lOgico a partir de los elementos del vector x que son divisibles por 2 CuAntos numeros son divisibles por 2
    
    Y <- x1 %% 2 == 0
    Z <- x1[x1 %% 2 == 0]
    sum(x1 %% 2 == 0)
    
  #INCISO F
  #Genere el siguiente vector: mes_1, mes_2,. . . , mes_10
    
    x3 <- paste0("mes_",x1)
    
#PREGUNTA 2
  #Genere un vector que repita roja cuatro veces y azul tres veces.
    
    color1 <- c(rep("rojo",4),rep("azul",3))
    color2 <- rep(c("rojo", "azul"), c(4,3))
    
#PREGUNTA 3

  #INSISO A
  #A partir de esta tabla genere un vector x con las edades de los estudiantes. Los nombres de cada uno de los elementos del vector deben ser los nombres de los estudiantes.
    
    x <- c("pedro" = 17,"Ana" = NA, "Maya" = 23, "Max" = NA, "paula" = 20)
    x
    
  #INCISO B
  #Defina un vector y que excluya los missing values (NA).
    
    y1 = x[-c(2,4)]
    y2 = x[c("pedro","Maya", "paula")]
    y3 = x[is.na(x) != TRUE ]
    y4 = x[!is.na(x)]
    
  #INCISO C
  #Asigne las edades de Pedro y Ana a un vector y5
    
    y5 = x[c("pedro","Ana")]
    y6 = x[c(1,2)]
    
    
  #INCISO D
  #Calcule la media aritmetica de las edades de los 5 estudiantes usando la funcion mean y la formula para el calculo de la media aritmetica:
    
    t0 = x[!is.na(x)]
    t1 = sum(t0)
    t2 = length(t0)
    m1 = t1/t2
    m2 = sum(x[!is.na(x)])/length(x[!is.na(x)])
    m3 = mean(x,na.rm = TRUE) #na.rm quita los valores NA
    
  #INCISO E
  # Calcule la desviaciOn estandar de las edades de los 5 estudiantes usando la funcion sd y la formula para el calculo de la desviacion estandar:
      
    
    d1 = sd(x,na.rm = TRUE)
    d2 = sqrt(sum((x[!is.na(x)] - mean(x,na.rm = TRUE))**2)/(length(x[!is.na(x)])-1))
  
  #INCISO F
    
    x[x<=20 & !is.na(x)]
    x[x<=20]
    
  #INCISO G
    
    mean(x<=20, na.rm = TRUE)
    
  #INCISO H
    
    mean(x[x<=20], na.rm = TRUE)
    sum(x<=10 & !is.na(x))

#PREGUNTA 4  - TAREA
    
    
#PREGUNTA 5
#Calcule la tasa de crecimiento promedio anual del PIB si las tasas son 20(PORCIENTO) y (MENOS)20(PORCIENTO)
    
    g0 = c(20,-20,4,15,-6)
    g1 = (sqrt(((1+g0[1]/100)*(1+g0[2]/100))) -1)*100 
    g3 = (prod(1+g/100)**(1/length(g))-1)*100
    
    paste0("Tasa promedio anual es ",round((prod(1+g0/100)**(1/length(g0))-1)*100,2), "%" )
    
    
#PREGUNTA 6
#Si una variable crece a un x(PORCENTAJE) por periodo, construya una formula que le permita obtener el numero de periodos para que la variable duplique su valor.
    
  #20000 = 10000(1+g)**t          
    
    x = c(4,5,6,8,10)
    
    x1 = log(2)/log(1+x/100)
  
    
#PREGUNTA 7
# Genere una muestra de 10000 numeros aleatorios provenientes de la distribucion normal estandar y calcule la skewness y kurtosis, usando las siguientes formulas
  
    z0 <- rnorm(10000)
    z1 <- mean(z0)
    z2 <- sd(z0)
    z3 <-  kurtosis(z0)
    # sketnes = 0
    # kurtosis = 3
    
    #install.packages("moments")
    library(moments)
    skewness(z0)
    kurtosis(z0)
    
    
#PREGUNTA 8
    
    a <- c(0,10,-5)
    b <- c(5,8,-4)
    c <- c(0,1,-1)    
    
    x1 <- rbind(a,b,c)    

    x1[3,2]    

    e <- c(0,10,-5,5,8,-4,0,1,-1)
    e1 <- matrix(e,nrow = 3,ncol = 3,byrow = TRUE)    # POR FILA
    e2 <- matrix(e,nrow = 3,ncol = 3)                 # POR COLUMNA
    
    d <- x1[c(2,3),3]    # x[i,j]
    
    
#PREGUNTA 11
    
    zona <- c("A","B","C","D")
    hombres <- c(800,200,700,300) 
    mujeres <- c(700,300,600,700)
    
  #INCISO A
    
    muestra_tota_dff <- data.frame(zona,hombres,mujeres)
    muestra_tota_dff
    
  #INCISO B
    
    #install.packages("tibble")
    #install.packages("dplyr")
    
    library(tibble)
    
    muestra_total_tb <- tibble(zona,hombres,mujeres)
    muestra_total_tb
    
    library("dplyr") # filter - filas, select - columnas, arrage 
    
    muestra_total_tb %>% filter(zona == "A")
    
  #INCISO C

    m1 = summary(muestra_total_tb)
    m1
    
  #INCISO D
  # Describa la estructura de muestra_total_tb definido en (b)
    
    typeof(muestra_total_tb)
    
  #INCISO E
  #Presente las primeras tres y últimas dos observaciones del muestra_total_tb
    
    names(muestra_total_tb)
    muestra_total_tb %>% filter(zona == "A" | zona == "B" | zona == "C")
    muestra_total_tb %>% filter(zona == "C" | zona == "D")
    
    head(muestra_total_tb, n= 3)
    tail(muestra_total_tb, n= 2)
    
  #INCISO F
  #Construya una tabla con las observaciones de las variables zona y mujeres
    
    muestra_total_tb %>% select(zona, mujeres)

    
  #INCISO G
  #Construya una tabla con las muestras de las zonas A y C
    
    muestra_total_tb %>% select(zona, mujeres)
    
    
  #INCISO H
  #Construya una variable muestra_total que sea igual a la suma de hombres y mujeres
    
    
  #INCISO I
  #Genere una variable que toma el valor "alto" si la muestra total de una zona determinada es mayor a 1000 e igual a "bajo", si no son mayores
    
    muestra_total_tb %>% mutate(mayor = if_else(hombres > 500,"alto", "bajo"))
    
    #buscar case_when
    
  #INCISO J
  #Guarde muestra_total_tb con extensión .csv
        
    