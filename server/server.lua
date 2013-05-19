-- attach to upper screen and reboot it ' left '
screen = peripheral.wrap("left")
screen.reboot()
sid = screen.getID()
print('reboot of: '+sid' done')
-- open rednet ( on ' right' )
rednet.open('right')
rednet.broadcast('server on')
-- fs check
if fs.exists('data')==false then
  fs.makeDir('data')
end
-- init done, main loop:
while true do
  local event,p1,p2 = OS.pullEvent("rednet_receive")
  term.clear()
  term.write(p1 +': '+p2)
end


