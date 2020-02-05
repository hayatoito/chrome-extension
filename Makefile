OUTPUT=$(HOME)/src/build/chrome-extension

zip:
	mkdir -p $(OUTPUT)
	(cd ./src && zip -r $(OUTPUT)/hayato-io.zip .)
	echo "Don't forget to increment version number in manifest.js"
	echo "zip is ready: " $(OUTPUT)/hayato-io.zip

open-dashboard:
	open "https://chrome.google.com/webstore/developer/dashboard"

open-extention-page:
	open "https://chrome.google.com/webstore/detail/hayato-io/fkhkaocaoiffclimpgakpoojlghgafai"

.PHONY: zip open-dashboard open-extention-page
