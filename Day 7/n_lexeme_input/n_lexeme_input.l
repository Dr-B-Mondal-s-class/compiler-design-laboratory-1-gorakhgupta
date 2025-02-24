%{
//macros
//Bibhash Kumar (2019UGCS020R)
#include<stdio.h>
int n=0;
int n_keywords,n_identifiers,n_operators,n_integers,n_floats,n_separators=0;
%}

keyword auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while|printf]
identifier [a-zA-Z_][a-zA-Z0-9_]*
operators "+"|"-"|"*"|"/"|">"|"<"|"="|">="|"<="|"=="|"||"|"&&"|"!"
operator ({operators})
sign "+"|"-"|""
integer ({sign}[0-9]+)
float ({sign}[0-9]+.[0-9]+)
separators "("|")"|"{"|"}"|","|" "|";"
seperator ({separators})

%%
{keyword} {n++; n_keywords++;}
{identifier} {n++; n_identifiers++;}
{operator} {n++; n_operators++;}
{float} {n++; n_floats++;}
{integer} {n++; n_integers++;}
{seperator} {n++; n_separators++;}
. {}
%%

int main () {
yyin = fopen("input.txt","r");
yylex ();
printf("The total number of lexemes are:- %d\n\n",n);
printf("No. of Keywords: %d\n",n_keywords);
printf("No. of Identifiers: %d\n",n_identifiers);
printf("No. of Operators: %d\n",n_operators);
printf("No. of Floats: %d\n",n_floats);
printf("No. of Integers: %d\n",n_integers);
printf("No. of Separators: %d\n",n_separators);
fclose(yyin);

return 0;
}

int yywrap (void)
{
return 1;
}
