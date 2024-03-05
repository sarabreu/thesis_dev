
deps:
	poetry install

submodule:
	git submodule init	
	git submodule sync
	git submodule update

dev: submodule deps