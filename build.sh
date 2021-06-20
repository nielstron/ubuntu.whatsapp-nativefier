#!/bin/bash

pkgname=whatsapp-nativefier
pkgdesc="WhatsApp desktop built with nativefier (electron)"
USER_AGENT="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0" 


nativefier \
	--inject "${pkgname}-inject.js" \
	--single-instance \
	--user-agent "${USER_AGENT}" \
	--icon "${pkgname}.png" \
	--browserwindow-options '{ "webPreferences": { "spellcheck": true } }' \
	"https://web.whatsapp.com"

