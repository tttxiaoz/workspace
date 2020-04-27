#include <iostream>
#include <time.h>

using namespace std;

int main()
{
    time_t local = time(NULL);
    cout << local << endl;

    struct tm * tmLoacl = gmtime(&local);

    cout << tmLoacl->tm_year+ 1900 << endl;
    

    return 0;
}