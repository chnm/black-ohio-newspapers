deploy :
	@echo "Deploying the site with rsync ..."
	rsync -avz --delete --itemize-changes --omit-dir-times \
			--checksum --no-perms --exclude-from=rsync-excludes \
			web/public/ chnmdev:/websites/blacknews/www | egrep -v '^\.'
	@echo "Finished deploying the site to dev with rsync."

.PHONY : deploy