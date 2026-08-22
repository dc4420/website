run:
	docker run --rm -ti -p 127.0.0.1:4000:4000 -v $$PWD:/app $$(docker build -q .)

