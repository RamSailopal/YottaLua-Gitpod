ydb = require('yottadb')
ydb.set('^TEST', {'1'}, "Testing")
res = ydb.get('^TEST', {'1'})
print(res)
