RENDERCV = uv run --python 3.12 --with "rendercv[full]" rendercv render
RENDER_OUT = render_output

.PHONY: render render-variant clean help

render: ## Render main CV (Ted_Zhao_ML.yaml)
	$(RENDERCV) "Ted_Zhao_ML.yaml" -o $(RENDER_OUT)/ml
	cp $(RENDER_OUT)/ml/Ted_Zhao_CV.pdf ted_zhao_ml_cv.pdf

render-variant: ## Render a variant: make render-variant ROLE=myob-pm YAML=variants/2026-04-17_myob-pm/Ted_Zhao_MYOB_PM.yaml
	@test -n "$(ROLE)" || (echo "Usage: make render-variant ROLE=<name> YAML=<path>"; exit 1)
	@test -n "$(YAML)" || (echo "Usage: make render-variant ROLE=<name> YAML=<path>"; exit 1)
	$(RENDERCV) "$(YAML)" -o $(RENDER_OUT)/$(ROLE)
	cp $(RENDER_OUT)/$(ROLE)/Ted_Zhao_CV.pdf $(dir $(YAML))ted_zhao_$(ROLE)_cv.pdf

clean: ## Remove all render output
	rm -rf $(RENDER_OUT)

help: ## Show available targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
