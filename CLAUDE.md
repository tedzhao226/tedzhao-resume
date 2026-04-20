# Resume Repo — CLAUDE.md

## Repo Structure

```
tedzhao-resume/
├── Ted_Zhao_ML.yaml              # Main/canonical CV (ML Engineer)
├── ted_zhao_ml_cv.pdf            # Main rendered PDF
├── variants/                     # Role-tailored CVs
│   ├── YYYY-MM-DD_role-name/     # Date of creation + target role
│   │   ├── Ted_Zhao_*.yaml       # Source YAML
│   │   └── ted_zhao_*_cv.pdf     # Rendered PDF
│   └── ...
├── render_output/                # Build artifacts (gitignored)
├── md/                           # Markdown versions and talking points
├── cover_letters/                # Cover letter drafts
├── Makefile
└── pyproject.toml
```

### Current Variants

| Folder | Target Role | YAML |
|---|---|---|
| `2026-04-15_agentic` | Agentic AI Engineer | `Ted_Zhao_Agentic.yaml` |
| `2026-04-15_ai-contract` | AI Engineer (contract) | `Ted_Zhao_AI_Contract.yaml` |
| `2026-04-15_cloudbees` | CloudBees | `Ted_Zhao_CloudBees.yaml` |
| `2026-04-15_data-analyst` | Data Analyst | `Ted_Zhao_DA.yaml` |
| `2026-04-15_data-engineer` | Data Engineer | `Ted_Zhao_DE.yaml` |
| `2026-04-15_lead-ai` | Lead AI Engineer | `Ted_Zhao_Lead_AI.yaml` |
| `2026-04-15_mlops` | MLOps Engineer | `Ted_Zhao_MLOps.yaml` |
| `2026-04-17_myob-pm` | MYOB Senior AI PM | `Ted_Zhao_MYOB_PM.yaml` |

## CV Format

All CVs are YAML files following the [RenderCV](https://docs.rendercv.com/) schema (`engineeringresumes` theme).

## How to Render

```bash
# Render main CV
make render

# Render a variant (outputs PDF into both render_output/<role> and the variant folder)
make render-variant ROLE=myob-pm YAML=variants/2026-04-17_myob-pm/Ted_Zhao_MYOB_PM.yaml

# Show all targets
make help
```

## Creating a New Variant

1. Create folder: `variants/YYYY-MM-DD_role-name/`
2. Copy and tailor YAML from main CV or closest existing variant
3. Render and copy PDF into the same folder
4. Update the variants table above

## Editing Rules

- Each YAML file is a self-contained CV variant — edit the variant you need
- Keep highlights concise (one line each, action-verb start)
- Bold keywords only in summary section, not in experience/projects
- Skills: group by domain, comma-separated list in `details`
- After editing, render to PDF and visually check layout fits 1-2 pages
- Banned words: consolidate, modernize, streamline, flexible, delve, establish, enhanced, comprehensive, optimize

## .gitignore

Uses whitelist pattern — if adding new tracked file types, un-ignore them in `.gitignore`.
