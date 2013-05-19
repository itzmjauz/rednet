rednet.open('top')

while true do
  event, scancode = os.pullEvent("key")
  if tostring(scancode)=="a" then
    rednet.broadcast("that's a penis!")    
  end
end
