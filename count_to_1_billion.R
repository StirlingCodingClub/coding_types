count_to_1_billion <- function(){
    for(i in 1:1000000000){
        if(i %% 100000000 == 0){
          print(i);
        }  
    }
    return("Done!");
}