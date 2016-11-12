#!/usr/bin/env lua5.1

local clock = os.clock
function sleep(n)  -- seconds
  local t0 = clock()
  while (clock() - t0 <= n) do end
end
MAC = {"b8:88:e3:b9:29:63","b8:88:e3:b9:29:64"}
while(0) do
	for i=1,2 do
	os.execute(string.format("wakeonlan %s",MAC[i]))
	end
	print("Wake Up!!!")
	sleep(15)
end
