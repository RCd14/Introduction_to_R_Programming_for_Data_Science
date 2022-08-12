printHelloWorld <- function(){
  print("Hello World")
}

add <- function(x,y){
  x+y
}

add <- function(x,y){
  return(x+y)
}

isGoodRating <- function(rating){
  #This function returns "NO" if the input value is less than 7. Otherwise it returns "YES".
  
  if(rating < 7){
    return("NO") # return NO if the movie rating is less than 7
    
  }else{
    return("YES") # otherwise return YES
  }
}
isGoodRating <- function(rating, threshold = 7){
  if(rating < threshold){
    return("NO") # return NO if the movie rating is less than the threshold
  }else{
    return("YES") # otherwise return YES
  }
}
isBadRating <- function(rating, threshold=5)
  if(rating < threshold){
    return("YES")
  }else{
    return("NO")
  }

watchMovie <- function(data, moviename){
  rating <- data[data["name"] == moviename,"average_rating"]
  return(isGoodRating(rating))
}

watchMovie <- function(data, moviename, my_threshold){
  rating <- data[data$name == moviename,"average_rating"]
  return(isGoodRating(rating, threshold = my_threshold))
}

watchMovie <- function(data, moviename, my_threshold = 7){
  rating <- data[data[,1] == moviename,"average_rating"]
  return(isGoodRating(rating, threshold = my_threshold))
}

watchMovie <- function(moviename, my_threshold = 7){
  rating <- my_data[my_data[,1] == moviename,"average_rating"]
  
  memo <- paste("The movie rating for", moviename, "is", rating)
  print(memo)
  
  return(isGoodRating(rating, threshold = my_threshold))
}

#Coding Exercise: update the watchMovie function to use the mean rating of all movies as the threshold
mean_all_movie_ratings<-mean(my_data[,5])

watchMovie <- function(moviename, my_threshold = mean_all_movie_ratings){
  rating <- my_data[my_data[,1] == moviename,"average_rating"]
  
  memo <- paste("The movie rating for", moviename, "is", rating)
  print(memo)
  
  return(isGoodRating(rating, threshold = my_threshold))
}

watchMovie <- function(moviename, my_threshold = 7){
  rating <- my_data[my_data[,1] == moviename,"average_rating"]
  
  memo <- paste("The movie rating for", moviename, "is", rating)
  print(memo)
  
  isGoodRating(rating, threshold = my_threshold)
}

#Create a global vaiable
myFunction<-function(){
  y<<-3.14
  return("Hello World")
}






















