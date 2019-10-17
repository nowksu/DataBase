install.packages("DBI")
install.packages("rJava")
install.packages("RJDBC") 

library(DBI)
library(rJava)
Sys.setenv(JAVA_HOME='C:/Program Files/java/jre1.8.0_211')
library(RJDBC)

drv <- JDBC( driverClass = "oracle.jdbc.driver.OracleDriver",
             classPath = "C:/app/nowks/product/11.2.0/dbhome_1/jdbc/lib/ojdbc6.jar")
conn <- dbConnect( drv, "jdbc:oracle:thin:@//localhost:1521/orcl","scott","tiger")
rst <- dbGetQuery( conn, "SELECT purpose, COUNT(*) FROM cctv_tbl GROUP BY purpose" ) #이것만 바꿔주면 됨 

str(rst)
dim(rst)
head(rst)
tail(rst)
View(rst)
