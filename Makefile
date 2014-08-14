all:
	$(MAKE) all -C DataStructure
	$(MAKE) all -C Vendor

git-setup-development:
	git config remote.origin.url git@github.com:MathRocks/MathRocks.git
	cat .gitmodules | sed 's/https:\/\/github\.com\//git@github.com:/' > gitmodules
	mv gitmodules .gitmodules
	git submodule init
	git submodule update --remote
	git submodule foreach git checkout master

git-add-submodules:
	git add $(shell git submodule status | grep '^\+' | cut -d' ' -f2)
