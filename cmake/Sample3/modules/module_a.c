#include <stdio.h>
#include "../utils/convert.h"
#include "module_a.h"

void PrintUpperCass(char _letter)
{
    char upper = ConvertUpper(_letter);
    printf("%c\n", upper);
}
