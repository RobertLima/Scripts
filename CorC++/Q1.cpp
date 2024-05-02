#include <stdio.h>
/*Question 1*/
main()
{

char emnum[10],maristat;
int reghr,overhr;
float hrpr,grpy,fedtax;

printf(" Enter Employee Number                       : ");
scanf("%s",&emnum);
printf(" Enter Regular Hour Worked                   : ");
scanf("%d",&reghr);
printf(" Enter Overtime Hour Worked                  : ");
scanf("%d",&overhr);
printf(" Enter Hourly Pay Rate                       : ");
scanf("%f",&hrpr);
printf(" Enter Marital Status(M or S)                : ");
scanf(" %c",&maristat);
printf(" Computed Gross Pay                          : $%.2f",grpy=reghr*hrpr+overhr*hrpr*1.5);
printf("\n Computed Federal Tax                        : $%.2f",fedtax=0.135*grpy);
printf("\n -------------------------------------------------------");
printf("\n\n Employee Payroll Summary");
printf("\n\n   Employee  Gross     Federal   Marital Net");
printf("\n   Number    Pay       Tax       Status  Pay");
printf("\n   --------- --------- --------- ------- --------");
printf("\n   %s  $ %.2f  $ %.2f   %c      $ %.2f",emnum,grpy,fedtax,maristat,grpy-fedtax);

return 0;
}

