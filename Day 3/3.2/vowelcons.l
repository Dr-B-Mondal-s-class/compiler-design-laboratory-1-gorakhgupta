%{
    int vow_count=0 , const_count=0 , white_space=0 , digit=0;
%}
  
%%
[aeiouAEIOU] {vow_count++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {const_count++;}
\n {printf("Number of vowels are:  %d\n", vow_count);
    printf("Number of consonants are:  %d\n", const_count); 
	vow_count=0,const_count=0;};
%%
int yywrap(){}
int main()
{
    printf("Lab Work performed by SAVITA NANDAN 2019UGCS055R\n");
    yylex();
   return 0;
}


