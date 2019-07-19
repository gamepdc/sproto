local sproto = require "sproto"

local host 

local _M = { }

function _M.encode(name, args, session, ud)
	return host:encode_request(cmd, message, session)
end

function _M.decode(body)
	return host:decode_response(body)
end

function _M.load(protostr)
	local proto = sproto.parse(protostr)
	host = proto:host "package"
end

return _M