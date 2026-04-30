# CLAUDE.md

Onboarding for Claude Code working in this repo.

## What this is

Source repo for the Lumina Help Center, hosted on Help Scout Docs at:
- Live URL: https://lumina.helpscoutdocs.com (becoming help.lumina.inc)
- Help Scout site: Lumina FAQs

This repo holds the brand-aligned CSS, the article HTML imports, the voice and tone reference, and the prompts used to convert source material into Lumina-compliant copy.

## How styling reaches the live site

1. CSS is authored in `styles/tokens.css` + `styles/lumina-helpscout.css`.
2. `bash scripts/build-css.sh` concatenates them into `dist/lumina-helpscout.combined.css`.
3. `dist/lumina-helpscout.combined.css` is served via GitHub Pages at:
   `https://bennyrad.github.io/lumina-help-center/dist/lumina-helpscout.combined.css`
4. Help Scout's Custom Stylesheet URL field points at that GitHub Pages URL.
5. After every CSS change: rebuild, commit, push. GitHub Pages updates in ~60s. Hard-refresh the live site (Cmd+Shift+R).

Always run the build script after editing CSS. Do not hand-edit `dist/lumina-helpscout.combined.css`. It is auto-generated.

## Brand and design

The visual direction is editorial, modeled on https://lumina.inc/legal-resources. Restrained, serif headlines, hairline rules, generous vertical rhythm. The brand source is the in-product UI; see `docs/design-reference/` for screenshots of the canonical Settings page and Figma exports.

Key brand tokens (full set in `styles/tokens.css`):
- Off-Black: `#100B07`
- Off-White: `#FFFFF4`
- Gold: `#B1A072` (accent, used sparingly)
- Soft sand sidebar: `#FBFBF7` (left rail in product)
- Display: Editorial New (serif)
- Body: Neue Montreal (sans)
- Mono: DM Mono

Editorial New and Neue Montreal are commercial fonts from Pangram Pangram. Lumina holds the web font license. Do not commit font files outside `assets/fonts/`.

## Voice and content

Every article must conform to `docs/voice-and-tone.md`. The rules are explicit and non-negotiable:
- Neutral, never interpretive
- Controlled, not performative
- Precise, not expansive
- Structural, not narrative
- Respectful, not familiar

When writing or editing article copy, check against the Never Use list in the voice doc. The most common violations from source material: "we recommend," "hang tight," "exciting," "we're working on," "unfortunately," "stay tuned."

The reusable rewriter prompt is at `prompts/faq-rewriter.md`. Use it as the system prompt when converting source material to Lumina copy.

## Repo layout
lumina-help-center/
├── CLAUDE.md                        # This file
├── README.md                        # Public-facing readme
├── docs/
│   ├── voice-and-tone.md            # Voice north star (DO NOT modify without owner approval)
│   ├── ia.md                        # Help Center information architecture
│   └── design-reference/            # Brand screenshots, Figma exports
├── prompts/
│   └── faq-rewriter.md              # Reusable system prompt for content work
├── styles/
│   ├── tokens.css                   # Brand variables (colors, type, spacing)
│   └── lumina-helpscout.css         # Help Scout Docs theme overrides
├── dist/
│   └── lumina-helpscout.combined.css  # Auto-generated, served via GitHub Pages
├── scripts/
│   ├── build-css.sh                 # CSS build, run after every styles/ change
│   ├── generate-batch1.py           # Batch 1 article generator
│   └── generate-batch2.py           # Batch 2 article generator
├── articles/
│   ├── batch1-reference.md          # Related articles, keywords, multi-cat for Batch 1
│   ├── batch2-reference.md          # Same, Batch 2
│   ├── about-lumina/                # Article HTML files by collection
│   ├── beta-phase-expectations/
│   ├── privacy/
│   ├── membership-and-access/
│   └── onboarding-and-setup/
├── beacon/                          # Future: Beacon widget config
└── assets/
└── fonts/                       # Self-hosted Editorial New, Neue Montreal, DM Mono

## Article HTML conventions

Article HTML files in `articles/` are minimal body content. They include:
- No `<html>`, `<head>`, `<body>` wrappers (Help Scout strips these)
- No `<h1>` (Help Scout uses the article title field)
- Semantic tags only: `<p>`, `<h2>`, `<h3>`, `<ul>`, `<ol>`, `<strong>`, `<em>`, `<a>`, `<blockquote>`
- HTML entities for special characters (`&rarr;`, `&ldquo;`, `&rdquo;`)
- No inline styles
- A leading HTML comment block with metadata (keywords, related articles, multi-category) for documentation. See `articles/_template.html` for the canonical pattern.

## Help Scout structural notes

- Site: Lumina FAQs (single Site)
- Collections (top-level navigation, visible on homepage):
  - About
  - Beta Phase
  - Privacy
  - Membership and Access (verify visibility)
  - Onboarding and Setup (verify visibility)
  - Lumina Docs (gated, internal-only)
- Plus tier: required attribution "Powered by Help Scout" cannot be removed. Style it cleanly; do not try to `display: none` it.
- Articles are imported via Help Scout UI. The HTML in `articles/` is the source of truth and a record of what was uploaded.

## Working agreements for Claude Code

1. **Always run `bash scripts/build-css.sh` after editing files in `styles/`.** Then commit both source and dist.
2. **Do not modify `docs/voice-and-tone.md`** without explicit approval. It is the brand voice north star.
3. **When fixing CSS, work from real DOM.** Open the live site in a browser, inspect element, find the actual class names, then write selectors. Do not guess based on Help Scout documentation alone.
4. **Comment new selectors with what they target** (e.g. `/* Sidebar nav heading on category pages */`). Help Scout's class names are not always self-explanatory.
5. **Test responsive at 375px and 1440px** at minimum. The site is read on desktop and mobile.
6. **Do not commit font files.** Reference them by path; the .woff2 files are ignored by .gitignore.
7. **Never mark articles "Published" via the repo.** Publishing is a Help Scout UI action.

## Status

Done:
- [x] Voice and tone reference locked
- [x] Information architecture defined
- [x] Brand tokens established
- [x] CSS deployed via GitHub Pages
- [x] Custom Stylesheet URL configured in Help Scout
- [x] Batches 1 and 2 migrated (26 articles)

In progress:
- [ ] CSS pass to match Figma in-product design (this is the immediate task)
- [ ] Articles annotated with keywords + related metadata in HTML

Pending:
- [ ] Self-hosted fonts (currently falling back to system stack)
- [ ] Custom domain `help.lumina.inc`
- [ ] Batches 3-5 migration
- [ ] Beacon widget configuration
- [ ] Notion bug-submit endpoint deprecation
