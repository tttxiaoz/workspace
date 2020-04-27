#include "CMyTimer.h"

CMyClock::CMyCloc();{
}
CMyClock::~CMyClock()
{
}

time_t CMyCloc::GetUtcTime(int nDate, int nTime)
{
    struct tm tmOuter = {nTime%100}
}