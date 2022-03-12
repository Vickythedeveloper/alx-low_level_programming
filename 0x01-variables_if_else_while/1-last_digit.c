#include <stdlib.h>
#include <stdio.h>
#include <time.h>
/* Main- Entry point */
/* more headers goes there */
/* betty style doc for function main goes there */
int main(void)
{
int n, l;
unsigned int Lap;
srand(time(0));
n = rand() - RAND_MAX / 2;
l = n % 10;
Lap = n % 10;
/* your code goes there */
if (l > 5)
printf("Last digit of %d is %d and is greater than 5\n", n, l);
else
if (l == 0)
printf("Last digit of %d is %d and is 0\n", n, l);
else
if (Lap < 6)
printf("Last digit of %d is %d and is less than 6 and not 0\n", n, l);
return (0);
}
