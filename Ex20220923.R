install.packages("rJava")
install.packages("DBI")
install.packages("RJDBC")

Sys.setenv(JAVA_HOME = "C:\\BigdataR\\jdk-11")
library(DBI)
library(rJava)
library(RJDBC)

drv <- JDBC(driverClass = "com.mysql.jdbc.Driver", "C:\\BigdataR\\mysql-connector-java-5.1.49.jar")





