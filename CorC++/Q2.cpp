#include <stdio.h>
/*Q2*/
main()
{

char cusnum[15];
char prodn1[15];
char prodn2[15];
int quant1,quant2,discountper;
float prodpri1,prodpri2,prod1,prod2,totpurch,discountamt;

printf(" Enter Customer Number                   : ");
scanf("%s",&cusnum);
printf(" Enter Product Name 1                    : ");
scanf(" %[^\n]",&prodn1);
printf(" Enter Product Price                     : ");
scanf("%f",&prodpri1);
printf(" Enter Quantity                          : ");
scanf("%d",&quant1);
printf(" Enter Product Name 2                    : ");
scanf(" %[^\n]",&prodn2);
printf(" Enter Product Price                     : ");
scanf("%f",&prodpri2);
printf(" Enter Quantity                          : ");
scanf("%d",&quant2);
printf(" Enter Discount Percentage (%)           : ");
scanf("%d",&discountper);
printf(" ------------------------------------------------------");
printf("\n\n Product Purchase Summary ==> Customer Number (%s)",cusnum);
printf("\n\n %s            $ %.2f X %d = $ %.2f",prodn1,prodpri1,quant1,prod1=prodpri1*quant1);
printf("\n %s         $ %.2f X %d = $ %.2f", prodn2,prodpri2,quant2,prod2=prodpri2*quant2);
printf("\n                                   -------");
printf("\n Total Purchase                    $ %.2f",totpurch=prod1+prod2);
printf("\n Discount Amount                   $ %.2f",discountamt=(discountper/100.00)*totpurch);
printf("\n                                   -------");
printf("\n Purchase Amount                   $ %.2f",totpurch-discountamt);

return 0;
}
