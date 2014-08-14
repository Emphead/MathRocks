all:
	$(MAKE) all -C DataStructure
	$(MAKE) all -C Vendor

git-add-submodules:
	git add $(shell git submodule status | cut -d' ' -f2)
