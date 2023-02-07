/*lex program to count number of words*/
%{
#include<stdio.h>
#include<string.h>
int words= 0;
int chars=0;
int line=0;
int space=0;
%}

/* Rules Section*/
%%
[\n]           {line++;
chars+=yyleng;}
([a-zA-Z0-9])* {words++;
                    chars+=yyleng;} /* Rule for counting
						number of words*/

[ \t\n]+           {space++;
chars+=yyleng;}


%%

int yywrap(void){}

int main()
{
	// The function that starts the analysis
	yylex();
    printf("No of words = %d\n",words);
    printf("No of chars = %d\n",chars);
    printf("No of space = %d\n",space);
    printf("No of line = %d\n",line);
	return 0;
}
