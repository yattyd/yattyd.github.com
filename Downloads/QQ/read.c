/* compiling: tcc read.c -o read.exe 
 * sample code in batch file:
 *   @echo off 
 *   echo Please input (...): 
 *   for /f  %%i in ('read.exe -d') do set IN_STR=%%i
 *   echo %IN_STR% 
 */
#include <stdio.h>     
#include <string.h>
int main(int argc, char **argv)
{
    char line[1024], *p;
    fgets(line, 1024, stdin);
    if (line == NULL) {return -1;}
    p = strstr(line, "\r\n");
    if (p != NULL) {*p = '\0';}
    printf(line);
    return 0;
}
