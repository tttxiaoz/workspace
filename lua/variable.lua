#!/usr/local/bin/lua

--[[
-- Lua 中有三种类型: 全局变量, 局部变量, 表中的域
-- Lua 中的变量全部为全局变量  除非用local显示声明为局部变量
-- 局部变量作用从声明位置开始到语句块结束
--]]

a = 5  -- 全局
local b = 5  -- 局部

function joke()
    c = 5  -- 全局
    local d = 6  -- 局部
end

joke()
print(c, d)

do
    local a = 6
    b = 6
    print(a, b)
end


a = "hello" .. "world"
print(a)

-- 对多个变量赋值 
x = 10
a, b = 10, 2*x
print(a, b)

a, b, c = 1, 2
print(a, b, c)
a,b = a+1, b+1, b+2
print(a,b)

-- 多个变量可以接收返回值
-- a, b = func()

--[[
-- t[i]
-- t.i                 -- 当索引为字符串类型时的一种简化写法
-- gettable_event(t,i) -- 采用索引访问本质上是一个类似这样的函数调用
--]]
--

