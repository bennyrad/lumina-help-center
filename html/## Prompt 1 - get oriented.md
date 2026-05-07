## Prompt 1 - get oriented

Read CLAUDE.md and docs/design-reference/design-notes.md. Also look at the screenshots in docs/design-reference/.

Then summarize back to me in 5 bullets:
1. What this repo does
2. The current state of the styling
3. The visual target (in-product Settings page)
4. The biggest gaps between current Help Scout rendering and the target
5. The order you'd tackle them in

Do not write any code yet. I want to confirm your read before we start.

## Prompt 2

Open the live site at https://lumina.helpscoutdocs.com in your browser tools (or fetch the rendered HTML if you can) and inspect:
- The homepage
- One category page (e.g. /category/19-privacy)
- One article page (e.g. /article/30-who-can-see-my-profile-during-beta)

For each, identify the actual class names Help Scout is using on the major regions: header, hero, search, popular articles, category cards, article body, feedback widget, footer.

Then update styles/lumina-helpscout.css to:
1. Match the in-product Settings page design (see docs/design-reference/)
2. Use the soft sand color #FBFBF7 for any sidebar / nav rail backgrounds (the homepage doesn't have one, but article pages with a category sidebar should)
3. Replace any selectors I wrote that don't match real Help Scout class names

After editing styles/lumina-helpscout.css:
- Run bash scripts/build-css.sh
- Show me a summary of what changed and which selectors you adjusted

Do not modify tokens.css unless you're adding a new variable. Do not modify articles/. Do not modify docs/voice-and-tone.md.


## Prompt 3

Create articles/_template.html showing the canonical pattern for article files, with a leading HTML comment block containing:
- Source: which spreadsheet row or document
- Category: primary Help Scout category
- Multi-category: any additional categories
- Keywords: comma-separated, matches what's in Help Scout's Keywords field
- Related: list of other article slugs to link from this one
- Notes: anything a future editor should know

Then go through every article in articles/about-lumina/, articles/beta-phase-expectations/, articles/privacy/, articles/membership-and-access/, articles/onboarding-and-setup/ and add the comment block to each, pulling the keywords and related articles from articles/batch1-reference.md and articles/batch2-reference.md.

After adding to all files, output a summary of how many files were updated and any inconsistencies you found between batchN-reference.md and the actual article filenames.