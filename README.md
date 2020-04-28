# Telnyx SMS to Keybase Webhook Bot

1. Add Webhook bot to your desired keybase chat room and request a URL with: `!webhook create <hook-name>`
2. Run this container with: `docker run --rm -d -p 9000:9000 -e HOOKURL=<your keybase hook url including https://> telnyx-sms-to-keybase:latest webhook -hooks /root/hooks.json -verbose`

_Note: Does not support MMS. Images are not processed, only the text portion of an mms will be sent to keybase_
