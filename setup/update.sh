# server_location="~/mindcrack/"
client="../client/client.lua"
server="../server/server.lua"

cp  ~/mindcrack/world/computer/2/ $client
cp  ~/mindcrack/world/computer/3/ $server

git add .
git commit -m 'client/server update'
git push
