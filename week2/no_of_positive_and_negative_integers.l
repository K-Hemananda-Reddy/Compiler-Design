/* Lex program to Count the Positive numbers,
	- Negative numbers and Fractions */

%{
	/* Definition section */
	int postiveno=0;
	int negtiveno=0;

%}

/* Rule Section */
DIGIT [0-9]
%%

\+?{DIGIT}+			 {postiveno++;
                        printf("Positive number = %s\n",yytext);}
-{DIGIT}+			 {negtiveno++;
                        printf("Negative number number = %s\n",yytext);}



%%

// driver code
int main()
{
	yylex();
	printf("\nNo. of positive numbers: %d", postiveno);
	printf("\nNo. of Negative numbers: %d\n", negtiveno);

	return 0;
}
