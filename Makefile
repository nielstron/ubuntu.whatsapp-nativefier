PKGNAME=whatsapp-nativefier
PKGDESC=WhatsApp desktop built with nativefier (electron)
USER_AGENT=Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0
INJECT_JS=${PKGNAME}-inject.js
ICON=${PKGNAME}.png
URL=https://web.whatsapp.com

all: build


build:
	nativefier \
		--inject "${INJECT_JS}" \
		--single-instance \
		--user-agent "${USER_AGENT}" \
		--icon "${ICON}" \
		--browserwindow-options '{ "webPreferences": { "spellcheck": true } }' \
		"${URL}"
