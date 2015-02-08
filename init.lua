local _M, crequire, brequire = require("newmodule")(...)
local default = crequire("default") -- load the jsoncommons2.default
return crequire(default.name) -- load the jsoncommons2.<DefaultName> configured as default

