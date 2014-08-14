all:
	$(MAKE) all -C DataStructure
	$(MAKE) all -C Vendor

git-setup-development:
	cat .gitmodules | sed 's/https:\/\/github\.com\//git@github.com:/' > gitmodules
	mv gitmodules .gitmodules
	git submodule init
	git submodule update --remote
	git submodule foreach git checkout master

git-add-submodules:
	git add $(shell git submodule status | cut -d' ' -f2)
