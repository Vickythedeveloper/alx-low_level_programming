#include <stdio.h>

int main(void)
{
  char f, l, m; /* first, middle and last initials declared respectively*/
  int age; /* Age of user decleared*/
  printf("Welcome!!!\n\n");
  printf("Kindly input your first, middle, and last initials without spacing and your age\n\n\t\t NB. ADD A SPACE BEFORE TYPING YOUR AGE\n");
  scanf("%c%c%c %d", &f, &m, &l, &age);
  printf("Welcome on board! %c%c%c age: %d.\n",f, m, l, age);
  return(0);
}
