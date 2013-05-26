# rednet
Minecraft management system
# server
one server, which keeps track of everything ( backup etc included )
# client
same code for every client, can add,remove,modify data on server.
# data
The data is processed by sending rednet messages ( event : `rednet_message` )
#### notation
When adding an item the message will probably look something like this : `iron add 10` or `iron remove 10`
- Additional options ( which will also go by rednet messages ) may come later
- notation always: `[object] [options] [args]`

### backup system
Every time a message gets processed ( without errors ) the server writes the changes to txt files.
### validation
The first time a client connects, the server owner has to validate the computer id.

## license
MIT
