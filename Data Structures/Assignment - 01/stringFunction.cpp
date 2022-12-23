#include <iostream>
using namespace std;

int findLen(char *s)
{
    int len = 0;
    while (*s != '\0')
        len += 1, s++;
    return len;
}

void copyStr(char *a, char *b)
{
    int i = 0;
    int j = 0;
    while (a[i] != '\0')
        i++;
    while (b[j] != '\0')
        a[i] = b[j], j++, i++;
    a[i] = '\0';
}

void revStr(char *str)
{
    int i = 0;
    int j = findLen(str) - 1;
    while (i < j)
    {
        char ch = *(str + i);
        *(str + i) = *(str + j);
        *(str + j) = ch;
        i++;
        j--;
    }
}

void concatenate(char *a, char *b)
{
    int i = 0;
    int j = 0;
    while (a[i] != '\0')
        i++;
    while (b[j] != '\0')
        a[i] = b[j], j++, i++;
    a[i] = '\0';
}

int main()
{
    char *ch;
    gets(ch);
    int x = findLen(ch);
    printf("%d", x);

    char *oldStr = new char[50];
    gets(oldStr);
    printf("\n");

    char *newStr = new char[50];
    gets(newStr);

    copyStr(newStr, oldStr);

    puts(oldStr);
    puts(newStr);

    revStr(oldStr);
    puts(oldStr);

    concatenate(oldStr, newStr);

    puts(oldStr);
}