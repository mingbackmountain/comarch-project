#include <stdio.h>
int main()
{
    int a = 0;
    int b = 0;
    int c = 0;
    printf("Enter number1:\n");
    scanf("%d", &a);
    printf("Enter number2:\n");
    scanf("%d", &b);
    printf("Enter number3:\n");
    scanf("%d", &c);
    int d = (a + b + c) / 3;
    printf("Answer = %d\n", d);
    return 0;
}