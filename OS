os.pullEvent = os.pullEventRaw
term.clear()
term.setCursorPos(1, 1)
term.setTextColor(colors.green)

print("What would you like to do?")

term.setCursorPos(1, 3)
print("1) Door Options")
print("2) Shutdown")

local door = "1"
local shutdown = "2"

term.setCursorPos(1, 7)
local input = read()

if input == door then
    shell.run("/Sys/Door.lua")
elseif input == shutdown then
    os.shutdown()
end
