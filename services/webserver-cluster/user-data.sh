#!/bin/bash

tee index.html <<EOT
<html> <head> <style> body { background-color: yellow; } </style> </head> 
<body> <h1> Hello, World $(hostname)! </h1> 
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
</body> </html>
EOT

# cat > index.html <<EOF
# <h1>Hello, World $(hostname)</h1>
# <p>DB address: ${db_address}</p>
# <p>DB port: ${db_port}</p>
# EOF

nohup busybox httpd -f -p ${server_port} &
