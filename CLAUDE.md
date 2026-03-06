# Resume Repo — CLAUDE.md

## Repo Structure
- `Ted_Zhao_ML.yaml` — ML Engineer CV (primary)
- `Ted_Zhao_AI_Contract.yaml` — AI Engineer contract CV
- `Ted_Zhao_DE.yaml` — Data Engineer CV
- `Ted_Zhao_DA.yaml` — Data Analyst CV
- `md/` — Markdown versions and elaborated talking points
- `Makefile` — Build commands

## CV Format
All CVs are YAML files following the [RenderCV](https://docs.rendercv.com/) schema (`engineeringresumes` theme).

## How to Render
```
# Render ML CV (default)
make render

# Render a specific variant
uv run --python 3.12 --with "rendercv[full]" rendercv render "<YAML_FILE>"
```

## Editing Rules
- Each YAML file is a self-contained CV variant — edit the variant you need
- Keep highlights concise (one line each, action-verb start)
- Skills: group by domain, comma-separated list in `details`
- After editing, render to PDF and visually check layout fits 1-2 pages

## .gitignore
Uses whitelist pattern — if adding new tracked file types, un-ignore them in `.gitignore`.
