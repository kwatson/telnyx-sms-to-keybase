# Telnyx SMS to Keybase Webhook Bot

![Docker Image CI](https://github.com/kwatson/telnyx-sms-to-keybase/workflows/Docker%20Image%20CI/badge.svg)

1. Add Webhook bot to your desired keybase chat room and request a URL with: `!webhook create <hook-name>`
2. Run this container with: `docker run --rm -d -p 9000:9000 -e HOOKURL=<your keybase hook url including https://> docker.pkg.github.com/kwatson/telnyx-sms-to-keybase/stable:latest webhook -hooks /root/hooks.json -verbose`
3. You can now configure your Telenyx message profile to send webhooks to: 'http(s)://<your-url>/hooks/smsincoming'

_Note: Does not support MMS. Images are not processed, only the text portion of an mms will be sent to keybase_

