print "This is test.lua!"

ctx = nettle.sha256()
ctx:update("Hello World!")
ctx:update("Hello World!")
hash = tostring(ctx)
assert(hash == "95a5a79bf6218dd0938950acb61bca24d5809172fe6cfd7f1af4b059449e52f8")

ctx = nettle.sha256()
ctx:update("Hello World!Hello World!")
assert(hash == "95a5a79bf6218dd0938950acb61bca24d5809172fe6cfd7f1af4b059449e52f8")
