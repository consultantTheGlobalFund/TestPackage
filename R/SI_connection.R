SI_connection <- function()
{

  con_si <- DBI::dbConnect(odbc::odbc(),
                           Driver= "{ODBC Driver 17 for SQL Server}" ,
                           Server= "10.45.11.9\\Prodcopy",
                           Database="SI_Data",
                           Port="1432",
                           UID="RConnector",
                           PWD="Nm@C8X4$FaU9xJM")
  con_si
}
