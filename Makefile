
run_update:
	git submodule update --init --recursive --remote
	npm -C vendor/pokemon-showdown --no-package-lock --no-save --omit=optional install esbuild
	node vendor/pokemon-showdown/build
	npm install --no-package-lock --no-save json-stringify-pretty-compact@3.0.0
	node update
