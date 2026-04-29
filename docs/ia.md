# Lumina Help Center Information Architecture

The structure below organizes all FAQ and support content for the Help Scout Docs knowledge base. Collections are top-level navigation; sub-sections are logical groupings within a collection.

This structure resolves the gaps and duplications flagged in the MarkOps FAQ Review (April 2026), absorbs the categories present in the Member-Facing FAQs spreadsheet (FAQs_Oct25 tab, 103 entries), and addresses the Discussions omission from the First 10 Minutes Mobile Experience document.

---

## Site-wide settings

- **Access:** Restricted. Public discovery is disabled; the site is delivered through Beacon.
- **Domain:** `help.lumina.inc` (CNAME to Help Scout Docs).
- **Brand:** Custom CSS via `styles/lumina-helpscout.css`.

---

## Collections

### 1. About Lumina

The platform briefing, system overview, and high-level orientation.

Sources: ABOUT (3 entries), elements of BETA PHASE EXPECTATIONS, FUNDING (1 entry, evaluate for inclusion).

### 2. Membership and Access

Tier definitions, beta phase context, membership identifiers, eligibility requirements.

Sources: ACCESS & PERMISSIONS (7), BETA PHASE EXPECTATIONS (6), ELIGIBILITY & ONBOARDING REQUIREMENTS (1).

### 3. Onboarding and Setup

Orientation, profile setup, post-onboarding steps.

Sources: ONBOARDING & SETUP (7).

### 4. Member Profiles

Profile editing, member space vs Profile pages, Partner and Talent Profiles.

Sources: MEMBER PROFILES (9), PARTNER/TALENT PROFILES (9).

Canonical entry: "Personal member space vs Profile page" (light/dark mode explainer). Other articles reference, do not duplicate.

### 5. Connect

Expression of Interest, Discussions, member-to-member engagement, messaging.

Sources: CONNECT (5), MESSAGING (3), DISCUSSIONS (currently uncategorized in spreadsheet, to be authored from First 10 Minutes Mobile Experience document and Member Access diligence materials).

Discussions folded into Connect rather than a standalone collection. Promote later if Discussions content grows beyond 4–5 articles.

### 6. Discover

Search, filtering, results behavior during Beta.

Sources: DISCOVER (5).

### 7. Projects

Collaborate, Projects, Opportunities, Deals, Milestones, Guests.

Sources: COLLABORATE & PROJECTS (9), PROJECTS (1), GUESTS (1).

Note: nine entries in COLLABORATE & PROJECTS are currently "Not published" in the spreadsheet. Confirm with Brian which to migrate as drafts vs hold entirely.

### 8. Payments

Payments, payouts, fees, taxes, receipts, cancellations, refunds, disputes.

Sources: PAYMENTS, PAYOUTS, AND FEES (5), TAX/RECEIPTS (1), CANCELLATIONS, REFUNDS, AND DISPUTES (3).

Note: all entries currently "Not published." Confirm scope with Brian.

### 9. Mobile

iOS app, identity verification, Mirror Contacts, mobile-specific features.

Sources: MOBILE (9). Add Discussions on mobile entry; cross-link from Connect.

### 10. Privacy and Safety

Profile visibility, data handling, privacy settings, platform safety policies.

Sources: PRIVACY (9), PLATFORM SAFETY (2).

### 11. Support and Technical

Contact options, bug reports, escalation, accessibility, browser support.

Sources: SUPPORT (5), ACCESSIBILITY & SYSTEM REQUIREMENTS (1), BROWSER SUPPORT (1).

---

## Migration priorities

**Tier 1 — migrate today (74 entries).**
All entries marked Published (59) or Review (15) in the spreadsheet, plus the canonical Discussions entries to be authored.

**Tier 2 — follow-up.**
The 29 Not published entries, primarily in COLLABORATE & PROJECTS and PAYMENTS. Confirm with Brian which to migrate as drafts.

**Tier 3 — drop.**
The 10 Skip and 9 Draft entries in the spreadsheet are out of scope for migration unless flagged otherwise.

---

## Migration workflow

For each entry:

1. Pull the source row from the spreadsheet or Notion.
2. Apply structural fixes from the MarkOps review (April 2026) if applicable.
3. Run through `prompts/faq-rewriter.md`.
4. Paste the rewritten output into a new Help Scout Docs article in the appropriate collection.
5. Cross-link related articles where applicable.

The light/dark mode explainer must exist as one canonical article in Member Profiles. Other articles that previously repeated this content reference it via link, not duplicate text.