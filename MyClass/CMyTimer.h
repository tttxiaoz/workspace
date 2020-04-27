#pragma once

class CMyClock
{
private:
    
public:
    CMyClock();
    ~CMyClock();

    static time_t GetUtcTime(int nDate, int nTime);
    static int GetUtcTimeInt(time_t utc);
    static int GetUtcDateInt(time_t utc);
    static int GetUtcWeekDayInt(time_t utc);
    static int GetUtcYearDayInt(time_t utc);

    static int GetLocalDateInt();
    static int GetLocalTimeInt();

    static string GetLocalDateTimeStr();
    static string GetLocalDateStr();
    static string GetLocalTimeStr();
    static string GetUtcTimeStr(int nDate, int nTime);
};
