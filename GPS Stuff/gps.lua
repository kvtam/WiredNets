local GPS = require "gps_nmea"
local filename = "4pm.nmea"
local output= "outfile.txt"
local f2w = assert(io.open(output,"w"))
local f = assert(io.open(filename, "r"))
while true do
	local line = f:read("*line")
	--print(line)
	if line == nil then break end
	local t = GPS.Decode(line)
	--print(t)
	for k,v in pairs(t) do
	f2w:write(k,"\t", v,"\n")
	end
end
