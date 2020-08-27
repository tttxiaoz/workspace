#!/usr/local/bin/lua

-- while 条件为true时 重复执行
-- for   重复执行  可以控制次数
-- repeat...until 重复执行  知道条件为真
-- 嵌套循环  
--
-- 可以用  break 和 goto 控制循环  
--
x = 0
while (true)
    do
        print('loop')
        x = x + 1
        if (x == 5) then
            print('continue code here')
            break
        end
    end
