
# What is JsonCommons2

It's the same goal than [ClassCommons2](https://github.com/tst2005/lua-jsoncommons2)
but focused on the JSON implementations and their API.


# Goal of JsonCommons2

 * be able to load one or more json implementation at a time
 * define and use a common API
 *  NEVER modify the global environment.


# Unified API

Note: it's a draft

I planned to mainly use the :
 * `common.encode`i
 * `common.decode`
 * `common.null`
 * (maybe also support the `common.stringify` and `common.parseJSON` for backward compatibility)


# Sample of use

```
local common = require("jsoncommons2")
local encode = common.encode
local decode = common.decode
```

By default the CJSON implementation was used.
You can choose the default with :

```
require("jsoncommons2.default").name = "cjson"

local common = require("jsoncommons2")
local encode = common.encode
local decode = common.decode
```

or load directly the wanted implementation with

```
local common = require("jsoncommons2.cjson")
local encode = common.encode
local decode = common.decode
```


# Supported implementation
 * CJSON
 * ...
 * See the list at http://lua-users.org/wiki/JsonModules


# Why use CJSON as default ?

 * because it was fast. See [benchmarks](http://www.kyne.com.au/~mark/software/lua-json-performance.html).
 * because it was available on my computer when I started jsoncommons2 !

# TODO

 * fill the todo list
 * ...


Have Fun !
