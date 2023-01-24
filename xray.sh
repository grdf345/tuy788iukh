#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a9526217-a805-4333-9c0e-40a05c9da5c7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

