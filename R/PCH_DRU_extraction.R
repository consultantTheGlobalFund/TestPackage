PCH_DRU_extraction <- function()
{
  PCH_DRU_df <-
    DBI::dbReadTable( SI_connection() , "test_PCH_DRU") %>%

    group_by( Geography.ISO.Alpha.3.Code , SI_GRANT_NAME__C , NewInd ) %>%
    fill( Performance.Cycle.Implementation.Period.Status , .direction = "up" ) %>%
    ungroup()

  return( PCH_DRU_df )
}


