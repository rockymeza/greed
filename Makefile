example: example/example.css

example/example.css: example/example.scss greed.scss
	python -mscss.tool -C -o $@ example/example.scss

server:
	python -mSimpleHTTPServer 8000

.PHONY: example server
