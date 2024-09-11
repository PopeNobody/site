##   server {
##     access_log log/access.vid.log;
##     listen 5080 ssl;
##     listen 9999 ssl;
##     server_name vid.copblock.app;
##     include petalbot.conf;
## 
##     location / {
##       proxy_pass http://ant.int.copblock.app:$server_port;
##       proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
##       proxy_set_header Host $host;
##       proxy_set_header Upgrade $http_upgrade;
##       proxy_set_header Connection "Upgrade";
##     }
##   }
