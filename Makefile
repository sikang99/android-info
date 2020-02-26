#
# Makefile for js-info
#
.PHONY: usage edit build run clean git
#----------------------------------------------------------------------------------
usage:
	@echo "usage: make [git]"
#----------------------------------------------------------------------------------
src-search-go ssg:
	hub-search --lang=go "chat"
src-search-js ssj:
	hub-search --lang=js "chat"
#----------------------------------------------------------------------------------
git g:
	@echo "> make (git:g) [update|store]"
git-update gu:
	git add .
	git commit -a -m "update information"
	git push
git-store gs:
	git config credential.helper store
#----------------------------------------------------------------------------------

