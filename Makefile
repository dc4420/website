run:
	bundle exec jekyll serve

update:
	while true; do git pull --ff-only; sleep 60; done
