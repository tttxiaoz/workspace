#!/usr/local/bin/lua

--[[
-- lua 为动态类型语言
-- lua的基本类型位8中
-- nul      只有值nil属于该类  表示无效值  相当与false
-- boolean  bool值  false和true
-- number   表示double
-- string   表示字符串  ''和""表示
-- function 由C或者Luah编写的函数
-- userdata 表示任意存储在变量中的C数据结构
-- thread   表示独立执行的线路  用于执行协同程序
-- table    Lua中的表(table) 是一个'关联数组', 数组的索引可以是数字 字符串或者表类型,
--              在Lua中,table的创建通过'构造表达式'完成,最简单的构造表达式时{}
--]]

print(type('Hello world'))
print(type(10.4 * 3))
print(type(print))
print(type(type))
print(type(true))
print(type(nil))
print(type(type(X)))
print(type(a))

-- table 操作
tab1 = {key1="val1", key2="val2", "val3"}
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
--[[
--上面tab1打印结果
--1 - val3
--key1 - val1
--key2 - val2
--]]

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

-- nil 在比较时加上双引号
print(type(X))
print(type(X)==nil)
print(type(X)=="nil")
print(type(C)=='nil')

-- 在lua中0为true  nil 为false
print(type(true))
print(type(false))
print(type(nil))
print(type(0))

if false or nil then
    print("至少一个是 true")
else
    print('false 和 nil 都是false')
end

if 0 then
    print('0 is true')
else
    print('0 is false')
end

-- string 可以用'' "" [[]]表示字符串
string1 = 'this is string1'
string2 = "this is string2"
string3 = [[this is string3]]

print(string1)
print(string2)
print(string3)


-- lua 会自动将j一个数字字符串转化为数字 
print("2" + 6)
print("2" + "6")
print("2 + 6")
print(2 + 6)

-- ..表示字符串的连接
print("a" .. "b" .. [[hello]])

-- # 计算字符串长度
len = "www.baidu.com"
print(#len)

print(#"www.baidu.com")

-- table的创建
local tbl1 = {}

local tbl2 = {"apple", "pear", "orange", "grape"}


tbl1['key'] = "value"

key = 10
tbl1[key] = 22
tbl1[key] = tbl1[key] + 11
for k, v in pairs(tbl1) do
    print(k.. " : " .. v)
end

for k, v in pairs(tbl2) do
    print(k.. " : " .. v)
end


for k, v in pairs(tbl2) do
    print("key", k, v)
end

-- function(函数)

function fn1(n)
    if n == 0 then
        return 1
    else
        return n * fn1(n-1)
    end
end

print(fn1(5))
fn2 = fn1
print(fn2(5))

function testFun(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k,v));
    end
end
tab = {key1 = "val1", key2 = "val2"};
testFun(tab, 
function(key,val) -- 匿名函数
    return key.."="..val;
end
);


-- thread(线程)
-- 在Lua中最主要的线程是协同程序, 和线程差不多 ,有自己独立的栈,局部变量和指针指令,'

-- userdata(自定义类型)
