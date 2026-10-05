# Article design and build

The article ships three ways from one text: `public/feature.md` (canonical), `public/feature.html` (designed page) and `public/feature.pdf` (printed from the HTML). Write the Markdown first; the HTML is a presentation of it, never a second draft.

## Layout

Magazine profile, not a report. The template at [../assets/feature-template.html](../assets/feature-template.html) implements this; fill its slots rather than designing from scratch.

| Zone | Content | Notes |
|---|---|---|
| Top line | The label ("Founder-prepared feature, drafted with AI assistance") and the date | Small, once |
| Cover | Full-width image with a one-line credit: the founder's supplied photograph, or an illustration labelled as AI-generated | Optional; in print it makes page one a cover and the at-a-glance panel starts page two |
| Hero | Kicker, headline, standfirst | Serif headline, large; standfirst in a lighter serif |
| At a glance | Portrait (if supplied), name, where based, the businesses (name and one line each), three "in brief" points, a strip of the founder's own brand marks | A panel beside or under the hero |
| Body | Sections with short crossheads | Measure of about 65 characters; generous leading |
| Highlight band | One wide panel for the flagship project: label, title, three or four sentences that add to the body rather than repeat it, "What you can see today" | Optional; sits before the case studies |
| Case-study panels | Two cards: label, title, three to five sentences, "What you can see today" | Two columns on wide screens, stacked on phones; three cards leave an orphan, so use the highlight band for a third |
| Pull-quote | Exact words only, with a short attribution line | At most two; accent bar, large italic serif; place it after the paragraph that explains whatever the quote refers to |
| Timeline | Dated milestones | Vertical line with year markers |
| Closing | The final paragraph, set as body text with a short accent rule above it | Not a boxed callout and not a disclaimer |
| Footer | One-line pointer to the verification sheet; provenance | Small |

Rules the template already follows and any variation must keep:

- Colours as tokens on `:root`, redefined for dark mode under `@media (prefers-color-scheme: dark)` guarded by `:root:not([data-theme="light"])` and again under `:root[data-theme="dark"]`; `body` has an explicit background.
- No external fonts or scripts (the PDF must render offline). System serif for headlines and body, system sans for labels.
- Works at phone width: 16px side gutters, no horizontal scroll; panels stack.
- Print styles: A4, 16 to 18 mm margins, the hero set as a block (a grid pushes the whole header to page two), panels and pull-quotes do not break across pages, colours preserved.
- Imagery, in this order of preference: a real portrait the founder supplied with rights confirmed (the template's portrait slot removes itself when `assets/portrait.jpg` is missing, so the page never shows a placeholder); a portrait AI-rendered from the founder's own photograph, only when the founder asks for it and confirms the source photo is them, captioned "Portrait: AI-rendered from the founder's own photograph." wherever it appears; a cover illustration generated for the piece and captioned as such ("Illustration: AI-generated for this feature. Not a photograph."). Never a generated likeness of anyone other than the founder, and never an AI-rendered portrait presented as a photograph. Then the founder's own brand marks in the "The businesses" strip: take them from the founder's brand files, or failing that from each business's own website or LinkedIn company page (the page's logo image is the business's own mark); use a text wordmark only when no mark exists anywhere. No logos or marks that belong to anyone else, no client screenshots without that client's permission. If there is no portrait, say so in the handover and give the photo brief from the pack.
- The reference for an AI-rendered portrait must be verified as the founder before anything is generated: show the founder the exact image you intend to use, or compare it against a photo they have confirmed. Public pages can carry other people's photos (commenters, colleagues, previous staff), and a wrong-person portrait is worse than none. If the founder's profile photo is behind a sign-in, a browser the founder has signed in with can capture it: enlarge the profile image element in the page (set its displayed size to its natural size) and zoom-capture that region, rather than copying any signed image address.
- Self-contained HTML. Before handover, inline every image as a `data:` URI so `feature.html` opens correctly on its own, from a zip, an email or a phone, with no `assets/` folder beside it (a small script that rewrites `src="assets/..."` to base64 does this; keep the asset-referencing copy in `private/`). Keep logos at about 240 pixels before inlining so the file stays under a megabyte.

- Social preview. The template carries Open Graph and Twitter tags with slots for `{{PAGE_URL}}` and `{{OG_IMAGE_URL}}`. Fill them when the page is hosted (absolute URLs only; relative paths do not work in link previews), and make `og.jpg` at 1200 by 630 from the cover (`Image.resize((1200,675)).crop((0,22,1200,652))`). Any page that will be shared on LinkedIn or X needs these, including the verification sheet and a hosted PDF's landing page; without them the share card is blank.

## Build

1. Copy the template to `public/feature.html` and replace every `{{SLOT}}` with the article's text. Keep paragraphs as `<p>`, crossheads as `<h2>`, and use the panel, quote and timeline markup provided. Remove any slot the article does not use (for example the second pull-quote).
2. Open it once at phone width and once wide (a browser, or the browser pane if available) and read it. Fix anything that wraps badly.
3. Print to PDF with a headless browser. From PowerShell on Windows:

```powershell
$html = "file:///C:/path/to/public/feature.html"
& "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --headless=new --disable-gpu --no-first-run --user-data-dir="$env:TEMP\edge-pdf" --print-to-pdf="C:\path\to\public\feature.pdf" --no-pdf-header-footer $html
```

Chrome takes the same flags. Use the new headless mode: the old `--headless` ignores the no-header flag and prints the file path on every page. On macOS or Linux call `google-chrome` or `chromium` with the same flags. If no browser is available, any browser's Print dialogue with "Save as PDF" and no headers or footers gives the same result.

4. Look at the PDF before handing it over: check that the headline and at-a-glance panel are on page one, that panels do not split, and that the closing and footer are not stranded on a page of their own. If the Read tool cannot render PDFs, `pip install pymupdf` and render pages to PNG (`pymupdf.open(path)[i].get_pixmap(dpi=60).save(...)`), or open the PDF in the browser pane.

## Keep the three in step

When the Markdown changes after review, regenerate the HTML and PDF from it. The pack reviewer treats a mismatch between the three as a finding.
