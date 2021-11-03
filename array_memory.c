# include<stdio.h>
# include<stdlib.h>

int main(void){
  
  int row_number; /* This is just the number of rows in the array   */
  int col_number; /* This is just the number of cols in the array   */
  int i, j;       /* Just an index                                  */
  double **array; /* Initialises a pointer to a pointer of doubles  */
  
  row_number = 4;
  col_number = 5;
  
  /* First allocate memory to store the addresses of rows */
  array = malloc(row_number * sizeof(int *));
  
  /* Note that the values of 'array' need to be stored somewhere */
  printf("Addresses where the addresses of the array row locations are: \n");
  for(i = 0; i < row_number; i++){
    printf("Row %d: \t %p \n", i, &array + i);
  }
  printf("\n");

  /* But these values of 'array' hold the addresses for the row locations */
  printf("Addresses to where the rows of array are located: \n");
  for(i = 0; i < row_number; i++){
    printf("Row %d: \t %p \n", i, array + i);
  }
  printf("\n");
  
  /* And we can now allocate some memory to each of these addresses */
  /* Note that the contents of array[i] are *also* addresses        */
  for(i = 0; i < row_number; i++){
    array[i] = malloc(col_number * sizeof(double));   
  }
  
  /* And so here are the locations where the row values *actually* start */
  printf("The array[i] is the address for where the row actually starts \n");
  for(i = 0; i < row_number; i++){
    printf("Row %d: \t %p \n", i, array[i]);
  }
  printf("\n");
  
  /* Assign some values -- just i plus j for each */
  for(i = 0; i < row_number; i++){
    for(j = 0; j < col_number; j++){
      array[i][j] = i + j;
    }
  }
  
  /* Now let's print the values */
  printf("The actual values of the array: \n");
  for(i = 0; i < row_number; i++){
    for(j = 0; j < col_number; j++){
      printf("%f\t", array[i][j]);
    }
    printf("\n");
  }
  printf("\n");
  
  /* But take a look at where those values are stored */
  printf("Where each value in the array is stored: \n");
  for(i = 0; i < row_number; i++){
    for(j = 0; j < col_number; j++){
      printf("%p\t", &array[i][j]);
    }
    printf("\n");
  }
  
  /* This is why we now need to free each row *and* the whole 'array' */
  for(i = 0; i < row_number; i++){
    free(array[i]);
  }
  free(array);
  
  return 0;
}

/*
 * To compile: gcc -Wall array_memory.c -o array_memory
 */