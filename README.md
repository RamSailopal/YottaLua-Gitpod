# YottaLua-Gitpod

Gitpod environment for development with Lua and YottaDB

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/RamSailopal/YottaLua-Gitpod)

Once the enviromnent has provisioned full, four windows will open at the bottom of the screen.

The first window can be ignored, the second window will give access to the YottaDB environment, the third will be access to a Lua environment and fourth, access to a command line to run Lua code.

A simple test example is stored in the code folder:

    ydb = require('yottadb')
    ydb.set('^TEST', {'1'}, "Testing")
    res = ydb.get('^TEST', {'1'})
    print(res)
    
This can be run in the fourth window with:

    lua test.lua
    
The code set performs the following equivalent in M:

    S ^TEST("1")="Testing"
    
This can further be seen by running the following in the second window:

    YDB>D ^%G

    Output device: <terminal>:

    List ^test
    ^test(1)="Testing"
    
 The same Lua code can be run in Lua environment (third window)
 
     ydb = require('yottadb')
     ydb.set('^TEST', {'1'}, "Testing")
     ydb.get('^TEST', {'1'})
     
     'Testing'
    



