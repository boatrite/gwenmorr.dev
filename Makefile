setup:
	bundle install

#
# Posts
#
SHELL := /bin/bash # Make `source` command available.
ENV := source env.sh # Set environment variables for BookStack auth
BOOKSTACK_CLI_CMD := bundle exec bookstack-cli

docs/posts/game-boy-advance-development-with-mruby.md.html:
	$(ENV) && $(BOOKSTACK_CLI_CMD) export page books/blog-posts/page/game-boy-advance-development-with-mruby --output_file=$@ --markdeep='{"tocStyle": "long"}'
	echo >> docs/posts/game-boy-advance-development-with-mruby.md.html
	cat cloudflare_web_analytics >> docs/posts/game-boy-advance-development-with-mruby.md.html

.PHONY: docs/posts/game-boy-advance-development-with-mruby.md.html
