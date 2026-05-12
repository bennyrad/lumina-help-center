# Lumina Help Center

Source repo for the Lumina Help Center, hosted on Help Scout Docs at `help.lumina.inc`.

This repo contains:

- Brand-aligned CSS for the Help Scout Docs theme
- Voice and tone reference for all member-facing copy
- The reusable rewriter prompt for converting source FAQ entries into Lumina-compliant copy
- Information architecture for the Help Center
- Beacon configuration (forthcoming)

---

## Deployment

### CSS to Help Scout

Help Scout Docs accepts a single Custom Stylesheet URL or a single uploaded stylesheet, configured at:

`Help Scout > Docs > [your site] > Settings > Custom Code`

**Recommended: URL approach for live iteration.**

1. Push the repo to GitHub.
2. Combine `tokens.css` and `lumina-helpscout.css` into a single file at `styles/dist/lumina-helpscout.combined.css` (the `@import` in the working file resolves to a flat stylesheet for production).
3. Reference the raw GitHub URL or a CDN-fronted version in the Custom Stylesheet URL field.
4. Push CSS changes; refresh the Help Center to see updates.

**Alternative: Upload approach.**

Upload the combined file via the Custom Code panel. You will need to re-upload on every change.

### Fonts

Web fonts must be hosted at absolute URLs reachable from the Help Scout Docs site. Two options:

- **GitHub Pages (acceptable for early traffic):** Enable Pages on this repo, point at `main` branch, fonts available at `https://bennyrad.github.io/lumina-help-center/assets/fonts/...`. Update `@font-face` URLs in `lumina-helpscout.css` to absolute paths.
- **CDN (recommended once traffic ramps):** Move fonts to a real CDN with caching and CORS configured for the Help Scout Docs domain.

Web font license: Editorial New and Neue Montreal are commercial fonts from Pangram Pangram. Lumina holds the web font license; do not redistribute the woff2 files outside this repo or the Help Center deployment.

### Custom domain

`help.lumina.inc` is configured as a CNAME to the Help Scout Docs site (`lumina.helpscoutdocs.com`). 
DNS configuration: `help.lumina.inc`   
CNAME   `lumina.helpscoutdocs.com.`

Configure the custom domain in Help Scout at:
`Help Scout > Docs > [your site] > Settings > General > Custom Domain`

### Access restriction

The Help Center is gated. Public access is restricted; the site is delivered to members through the Beacon widget embedded in the Lumina app and (selectively) the marketing site. See `beacon/config.js` for the embed configuration.

