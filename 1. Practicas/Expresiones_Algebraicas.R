#-------------------EXPRECIONES ALGEBRAICAS----------------------------
#

#SUMA
1+2

#RESTA
10-4

#MULTIPLICACION
5*5

#DIVICION
4/2
4/3
#DIVISION SIN DECIMALES
4%/%3

#POTENCIA
2^2
2**2

#MODULO
4%%3

#Verificar la clase de dato
class(4)
class(4L)

#-------------------STRINGS----------------------------

"hello"
'world!'

#TAMAÑO DE UN STRING
nchar("hello")


#-------------------ASIGNACION----------------------------
#FORMA 1
x <- 2
2*x

#FORMA 2
5 -> x
2*x

#IMPRESION
(y <- 10)


#-------------------VECTORES----------------------------

#VECTOR FORMA 1
1:50

#TAMAÑO DEL VECTOR
length("qax")
length(c("foo", "barz"))

#CONCATENAR PARA FORMAR VECTOR
c(1,2,3,4,5)

#VECTOR FORMA 2
V <- 1:5

#OBTENCION DE VALORES
V[1]
V[3]
V[2:5]
V[c(1,3,5)]
V[c(TRUE,FALSE,TRUE,FALSE,TRUE)]

#OBTENCION DE VALORES EN BASE A EXPRECIONES

V %% 2 == 0
V[V %% 2 == 0]
V[-(1:3)]

#NOMBRES A UNA POS DEL VECTOR [HASH]
W <- c("A"=1,"B"=2,"C"=3)
W

W["A"]
names(W) <- c("X","Y","Z")
W

#OPERACIONES CON VECTORES

X <-  1:4
Y <- 1:2
X-Y

#-------------------AYUDA Y DOCUMENTACION----------------------------

?'NOMBRE DE LA FUNCION O SIMBOLO'
?'+'
?'nchar'

#-------------------CREACION DE FUNCIONES----------------------------

square <- function(x) x**2
square(1:4)

square_and_subtract <- function(x,y){
  squared <- x**2
  squared -y
  
}

square_and_subtract <- function(x, y) x ** 2 - y
square_and_subtract <- function(x, y) return(x ** 2 - y)

square_and_subtract(2,1)
square_and_subtract(1:5,rev(1:5))

#-------------------FUNCIONES Y EXPRECIONES DE VECTORES----------------------------

#SUMA TODOS LOS VALORES
sum(1:4)

#if else

ifelse(X>3,"bar","baz")
X


#-------------------IF ELSE ------------------------


if (2 > 3) "false"
if (3 > 2) "true"

if (2 > 3) x <- "bar"
if (3 > 2) x <- "baz"

if (2 > 3) "bar" else "baz"

if (2 > 3) {
  x <- "bar"
}

x <- if (2 > 3) "bar" else "baz"
x


#-------------------CICLOS ------------------------


x <- 1:5
total <- 0
for (index in seq_along(x)) {
  element <- x[index]
  total <- total + element
}
total


x <- 1:5
total <- 0
index <- 1
while (index <= length(x)) {
  element <- x[index]
  index <- index + 1
  total <- total + element
}
total

x <- 1:5
total <- 0
index <- 1
repeat {
  element <- x[index]
  total <- total + element
  index <- index + 1
  if (index > length(x)) break
}
total



#-------------------FACTORS ------------------------

f <- factor(c("small", "small", "medium","large", "small", "large"))
f
levels(f)

ff <- factor(c("small", "small", "medium",
               "large", "small", "large"),
             levels = c("small", "medium", "large"))
ff

summary(f)
summary(ff)

of <- factor(c("small", "small", "medium",
               "large", "small", "large"),
             levels = c("small", "medium", "large"),
             ordered = TRUE)
of

ordered(ff)
ff
ordered(f, levels = c("small", "medium", "large"))

v <- 1:4
names(v) <- LETTERS[1:4]
v

(ff <- factor(LETTERS[1:4]))
v[ff]

(ff <- factor(LETTERS[1:4], levels = rev(LETTERS[1:4])))
v[ff]

as.numeric(ff)
as.vector(ff)
v[as.vector(ff)]

#-------------------DATA FRAMES ------------------------

df <- data.frame(a = 1:4, b = letters[1:4])
df

df[1,1]
df[1,]
df[,1]
df[,'a']

df$b

df <- data.frame(a = 1:4, b = letters[1:4], stringsAsFactors = FALSE)












