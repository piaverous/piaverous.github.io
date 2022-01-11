DIR_GIT=$(shell sh -c "git rev-parse --show-toplevel")

all: help

##@ Start
start:  ## Start a local server
	$(call info_colors,blue,👋 Running)
	@hugo serve

run: start ## Alias for start

##@ Build
build:  ## Builds the site
	$(call info_colors,blue,🔨 Building)
	@hugo --minify
	@cp CNAME public

##@ Clean
clean: ## Clean the public folder
	$(call info_colors,red,🗑 Clean)
	@rm -rf public

include $(DIR_GIT)/prettier.mk

.PHONY: all start run build clean