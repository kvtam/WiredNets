local filename = "4pmGNOSS.txt"
local csv = "GPS.csv"

local function to_csv(filename)
	local f = assert(io.open(filename, "r"))
	local f2w = assert(io.open(csv,"w"))
	local t = f:read("*all")
	f2w:write("SAT\n")

	--for i in string.gfind(t, "HDOP:%s+(%d%.%d)") do
	--	f2w:write(i,",\n")
	--end
	--for i in string.gfind(t, "longitude%s+(%d+%.%d+)") do
	--	f2w:write(i,",\n")
	--end
	for i in string.gfind(t, "satellites:%s+(%d)") do
		f2w:write(i,",\n")
	end
	f:close()
	f2w:close()
end


to_csv(filename)
