
if not pcall(require, "cjson") then
	return nil
end

local cjson = require("cjson")

local _M = {}
_M.encode = assert(cjson.encode)
_M.decode = assert(cjson.decode)
_M.null = assert(cjson.null)
return _M


