#'collectData
#'
#'
#'Collects stream data for sites
#'@param states a list of the stats you want to use
#'@param parameters the parameters you want
#'@param start date
#'@param end date
#'@return a datafram
#'@export
# collectData <- function(states, parameters, start_date = paste(format(Sys.Date(), format = "%Y"), "-01-01"), end_date = Sys.Date()){
#
#   data(site_data)
#
#   state_list <- c()
#   for( state in states){
#     state_code <- switch(toupper(state), "MICHIGAN"= 26, "INDIANA"= 18, "NEW YORK"= 36, "ILLINOIS"= 17, "WISCONSIN"= 53)
#     state_list <- append(state_list, state_code)
#   };
#
#   # Limit site data to states we want
#   site_data <- site_data[site_data$state_cd %in% state_list,]
#   # Iniliize a dataframe
#   final_df <- data.frame()
#
#   # create a list of site codes
#   water_sites = site_data['site_no']
#
#
#   # Loop through sites and collect
#   for(j in 1:nrow(water_sites)){
#     this_site <- site_data[j,]
#
#     # Correct for missing zeros at the front of the site number
#     if (nchar(this_site) < 8){
#       this_site <- paste(0,this_site,sep= "")
#     };
#     this_data <- readNWISdv(this_site , parameters, start_date, end_date)
#     if(nrow(this_data) > 0){
#       final_df <- smartbind(final_df,this_data)
#     };
#   };
#
#   return(final_df)
# }
