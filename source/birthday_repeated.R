#' Repeated Birthdays function
#' 
#' takes the number of people in the room and returns TRUE if there are repeated birthdays and FALSE otherwise
#'
#' @param n_room # number of people in the room
#'
#' @returns TRUE or FALSE depending on if people have the same birthday in the room
#' 
birthday_repeated = function(n_room) {
  birthdays = sample(1:365, size = n_room, replace = TRUE)
  
  repeated_birthdays = length(unique(birthdays)) < n_room
  
  return(repeated_birthdays)
}