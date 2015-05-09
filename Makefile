build:
	docker build -t rethore/scholar .

run:
	docker run -it --rm rethore/scholar

bash:
	docker run -it --rm rethore/scholar /bin/bash
