%{
 int flag = 0;
%}
%%
[\n] {
    flag==0?printf("Only alphabets present\n"):
    printf("Other characters are also present\n");
    flag = 0;
}
  
[^a-zA-Z] {flag = 1;}
. {}
%%
int main() {
    printf("Lab Work done by SAVITA NANDAN 2019UGCS055R\n");
    yylex();
}

int yywrap(void) {
    return 0;
}
