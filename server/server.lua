-- attach to upper screen and reboot it ' left '
term = peripheral.wrap('left')
term.clear()
-- open rednet ( on ' right' )
rednet.open('right')
rednet.broadcast('server on')
-- fs check
if fs.exists('data')==false then
  fs.makeDir('data')
end
-- init done, main loop:
while true do
  local event,p1,p2 = os.pullEvent("rednet_message")
  term.write(tostring(p1))
  term.write(' sends: ')
  term.write(tostring(p2))
  local cX,cY = term.getCursorPos()
  term.setCursorPos(1,cY+1)

end


