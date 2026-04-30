# Design reference for Help Center styling

Goal: match the visual language of the Lumina in-product Settings page (`settings-help-page.png`). The Help Center should feel like an extension of the product, not a separate Help Scout site.

## Key elements to lift

**Sidebar / left rail**
- Background: `#FBFBF7` (warm off-white, distinct from page background)
- Active item: same background as sidebar, just a subtle pill highlight
- Icons: monochrome line icons, left of label
- Type: Neue Montreal sans, modest size

**Main content area**
- Background: pure off-white `#FFFFF4`
- Generous padding
- Section dividers: hairline rule (`#D2D2C9` or `#EAE5DC`)
- Section headers: serif (Editorial New), large, no bold

**Tabs (My details / Account / etc.)**
- Inactive: muted gray
- Active: black with thin underline rule
- Mono uppercase for tab labels? Verify in Figma.

**Buttons**
- Primary: black pill (`#100B07`), white text, generous horizontal padding
- Secondary: white pill, thin black border, black text

**Links**
- Underlined, off-black, gold underline on hover

## What NOT to lift

- The avatar circles and "UNFINISHED" badge are product chrome, not help-center concerns.
- Breadcrumbs are product navigation; Help Scout has its own breadcrumb pattern.
- The hamburger and notification bell are product UI.

## Figma source
settings-help-page.png
