/*
  Questo è un commento
  qui posso descrivere ciò che vogòio suòl programma
 */

#include <stdio.h>
#include "primo.h"
#include "secondo.h"
#include "terzo.h"

int main()
{
  int num;
  int a;
  printf("Commento nel master\n");
  printf("Commento scritto sul ramo secondario\n");
  printf("\n");
  printf("PREMI:\n1) per entrare nel primo programma\n2) per entrare nel secondo programma\n3) per entrare nel terzo programma\n0) per uscure\n\n");
printf("Inserisci un numero: ");
 scanf("%d",&num);
  while (num!=0){
    if(num==1)
      a=primo();
    else if(num==2)
      a=secondo();
    else if(num==3)
      a=terzo();
      else
	printf("Premi un alto numero\n");
   a=a+1;
printf("Inserisci un numero: ");
 scanf("%d",&num);
  }
 return(0);
}
