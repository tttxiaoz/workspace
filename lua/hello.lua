#!/usr/local/bin/lua

print("hello world!")
print("this is first lua program!")

-- 这是单行注释
--[[
    这是多行注释
    这是多行注释
    这是多行注释
--]]
--[[
--lua的保留关键词
--and bread do else elseif end false for function if in local
--nil not or repeat return then true until while goto
--]]

-- 默认情况下 变量总是全局的 缺不需要声明 没有初始化的全局变量位nil
print(b)
b = 10
print(b)
-- 删除一个全局变量就给g这个变量赋值位nil
b = nil
