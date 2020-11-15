library(dplyr)
library(nycflights13)

airlines
flights

#asignacion del data set

ds <- flights
ds
#informacion del data set, filas, columnas y nombre de columnas

glimpse(ds)
names(ds)


#-------------------------------------- COMANDO - filter --------------

enero <-filter(ds,month == 1, day == 1)
enero
nrow(enero)

enero_dic1 <- filter(ds, month == 1 | month == 12)
enero_dic1

enero_dic2 <- filter(ds, month %in% c(1,12))
enero_dic2

enero_dic3 <- filter(ds, month %in% 1:5)
enero_dic3

delay1 <- filter(ds,dep_delay+arr_delay >= 240)
delay1


delay2 <- filter(ds,arr_delay >= 120 |dep_delay >= 120)
delay2

#DATA FALTANTE

lapply(ds, function(x){sum(is.na(x))})


z <- c(1,NA,3)
df <- tibble(z)
df
filter(df, z>1)
filter(df, is.na(z) | z>1)


#LLAVES UNICAS

names(ds)
unique(ds$dest)
unique(ds$origin)

dest_orl <- filter(ds, dest %in% c("IAH","HOU"))
dest_orl

#buscar datos entre

betw = filter(ds,air_time >= 30, air_time <= 60)
betw

betw = filter(ds, between(air_time,30,60))
betw

#-------------------------------------- COMANDO - arrange ------------

arrange(ds, year, month, day)
arrange(ds, dep_time)
arrange(ds, desc(dep_time))

arrange(ds, distance / air_time)

arrange(ds, desc(distance / air_time))


#-------------------------------------- COMANDO - select  ------------

select(ds, year, month, day)

select(ds, dep_time:arr_time)
select(ds, year:day)
select(ds, -(year:day))

select(ds, starts_with("dep_"))
select(ds, ends_with("delay"))

select(ds, contains("dep"))

select(ds, num_range("fecha_",1:5))

select(ds, air_time, distance, everything())

#-------------------------------------- COMANDO - mutate  ------------


ds_extract <- select(ds,year:day,ends_with("delay"),distance, air_time)
ds_extract

mutate(ds_extract, 
      velocidad = distance/air_time,
      ganancia = dep_delay - arr_delay,
      ganancia_hora = ganancia/60)


transmute(ds_extract, 
       velocidad = distance/air_time,
       ganancia = dep_delay - arr_delay,
       ganancia_hora = ganancia/60)


#-------------------------------------- COMANDO - extras  ------------

(x <- 1:10)

lag(x)
lead(x)
cumsum(x)
cummean(x)
min_rank(x)
row_number(x)

summarise(ds, delay = mean(dep_delay, na.rm= TRUE))


by_day <- group_by(ds, year, month, day)
by_day
summarise(by_day, delay = mean(dep_delay, na.rm= TRUE))

by_month <- group_by(ds, year, month)
by_month
summarise(by_month, delay = mean(dep_delay, na.rm= TRUE))


#-------------------------------------- COMANDO - IMPORTANTE - %>%  ------------




ds %>% 
  filter(month == 1) %>% 
  group_by(year, month, day) %>% 
  summarise(delay = mean(dep_delay, na.rm= TRUE))

ds %>% 
  group_by(dest) %>% 
  summarise(count = n(),
            dist = mean(distance, na.rm= TRUE),
            delay = mean(arr_delay, na.rm= TRUE)) %>% 
  filter(count > 20, dest != "NHL")

  