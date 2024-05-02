#include <stdio.h>
/*Q3*/
main()
{
char anum[10];
char atp[10];
float awh,adr,dpa,abl=300;

printf(" Enter Account Number                        : ");
scanf("%s",&anum);
printf(" Enter Account Type                          : ");
scanf("%s",&atp);
printf(" Enter Account Withdrawal                    : ");
scanf("%f",&awh);
printf(" Enter Account Dividend Rate(%)              : ");
scanf("%f",&adr);
printf(" Enter Deposit Amount                        : ");
scanf("%f",&dpa);
printf(" -------------------------------------------------------");
printf("\n\n Bank Account Summary");
printf("\n\n Account  Account  Account    Account      Account    Account     Current ");
printf("\n Number   Type     Balance    Withdrawal   Dividend   Deposit     Balance");
printf("\n -------- -------- ---------  ------------ ---------- ----------- --------");
printf("\n %s %s  $ %.2f   $ (-) %.2f $ (+) %.2f $ (+) %.2f $ %.2f",anum,atp,abl,awh,abl*(adr/100),dpa,abl-awh+(abl*adr/100)+dpa);


return 0;
}
