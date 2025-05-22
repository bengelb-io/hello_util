#include <stdio.h>
#include "hello_util.h"

const int capitalize = 'a' - 'A';

void times(const char *hello, int x)
{
    for (int i = 0; i < x; i++)
    {
        printf("%s", hello);
    }
}

void scream(const char *hello)
{
    while (*hello != '\0')
    {
        int c = *hello;
        if (c > 97 && c < 122)
        {
            putchar(c - capitalize);
        }
        else
        {
            putchar(c);
        }
        hello++;
    }
}

void println(const char *hello)
{
    printf("%s\n", hello);
}