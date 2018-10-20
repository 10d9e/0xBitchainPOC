#!/usr/bin/env sh

: ${TRUSTED_HOSTS:='"localhost", "127.0.0.1"'}
: ${BANNED_HOSTS:=''}
: ${WS_SECRET:='secret'}

echo "Trusted hosts: [$TRUSTED_HOSTS]"
echo "Banned hosts: [$BANNED_HOSTS]"
echo "WS secret: $WS_SECRET"

cd /app

echo "module.exports = {trusted: [$TRUSTED_HOSTS], banned: [$BANNED_HOSTS]};" > lib/utils/config.js

WS_SECRET=$WS_SECRET npm start
