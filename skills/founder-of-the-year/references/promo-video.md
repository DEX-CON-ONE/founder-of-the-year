# The intro video: a stage introduction for the founder

When the founder asks for a video, make one short piece in the style of a conference host bringing a speaker on stage: an announcer, a modern instrumental track, the founder's name and face at the peak, and an honest end card. It is the `/brag` idea pointed at a person instead of a product. Twenty to thirty seconds, 1920 by 1080, with a poster frame and share copy.

## What it must and must not say

- Every spoken or on-screen claim maps to a line in the verification sheet. Write the script with the V-IDs in the margin and keep that file in `private/`.
- "Founder of the Year" is the title of the feature, not a prize. The announcer introduces "the subject of this year's Founder of the Year feature" or simply the founder by name; never "winner", "award", "honoured" or "recognised by". The end card reads "Founder-prepared feature, drafted with AI assistance".
- The hype is in the delivery, not in invented facts. Three proof beats taken straight from the article (the flagship delivery, the number that is safe to say, the design rule that makes them different), each one sentence.
- No client names, figures or third parties beyond what the article already uses. No music or imagery whose rights you cannot state.

## Script shape (about 25 seconds)

1. **Cold open, 0 to 3 s.** A low riser and a single line of type: the feature's label. Music enters on the beat.
2. **The call, 3 to 7 s.** Announcer: "Ladies and gentlemen..." then the founder's defining line from the standfirst, rephrased for the ear.
3. **Three beats, 7 to 19 s.** One sentence each, on the music's phrase changes, with a word or two of type for each. Use the article's own phrasing.
4. **The name, 19 to 24 s.** "Please welcome..." and the founder's full name, as the portrait fills the frame with the brand marks beneath it.
5. **End card, 24 to 27 s.** Label, the address of the page that hosts the profile, music out.

## Imagery: the founder's brand and work, gathered before composing

A stage introduction needs more than type on a dark background. Before the composer starts, collect and stage in `intro/assets/`:

- **Brand marks** for every business, from the article's assets (which came from the founder's brand files or their company pages).
- **The founder's own sites**, captured as 1920 by 1080 screenshots with a headless browser (`msedge --headless=new --window-size=1920,1080 --screenshot=<file> <url>`, or Chrome with the same flags): the home page hero of each business, a product page (for example a product's own page), and the portfolio or case-study page the company publishes. Crop or mask any figure, count or price that the verification sheet has not cleared; the screenshot is set dressing, not a claim.
- **The flagship project's public page** (its landing or marketing site), only where the founder has the standing to agree to its use (they run it, sit on its board, or the client has said yes). Capture it the same way.
- **Client sites** only where the article already names the client as a public case study and the founder confirms; otherwise show the founder's own case-study page about the work instead, or nothing.
- **The article itself**: the cover portrait, and a screenshot of the article's hero (headline and at-a-glance panel) as the "read the feature" beat.

Record each capture in `private/video-script.md` with its URL, date and what was masked. Nothing from behind a login, no third-party marks, no stock footage, no AI-generated scenes of real places.

Use them as moving set: slow pushes and pans over the screenshots behind the type, the logos as a lower-third strip, the portrait as the reveal. Keep the type legible over them (a 40 to 60 per cent ink wash is normal).

## How to make it

- **Announcer.** Generate the voice-over with the connected speech service (an energetic event-host voice; ask the founder only if they have a preference). One take per line, so beats can be timed independently. Keep the lines short; announcers land names, not clauses.
- **Music.** Generate an instrumental track rather than reusing a bundled library piece: modern, pop-leaning electronic, about 120 to 128 bpm, a clear build and a hit at the name reveal, 30 seconds, no vocals. State in the ledger that it was generated for the piece.
- **Composition.** Hyperframes (Node 22 or later; `npx -p node@22 -p hyperframes -c "hyperframes <command>"` works without installing it). Use the article's palette and type, the portrait (captioned as AI-rendered if it is), and the brand marks already in `public/assets`. Hand the composition to a smaller-model sub-agent with the storyboard, the audio files and their measured durations (`ffprobe`), and the exact text; validate the result yourself by extracting frames with `ffmpeg` at each beat and listening once through.
- **Deliver** `brag.mp4`, `brag.jpg` (the name-reveal frame), `share-copy.txt` and `private/video-script.md` with the V-IDs and the capture record. Nothing is posted.

## Checks before handover

Frames at each beat show the right words; the name is spelled correctly on screen and pronounced correctly; the end card is legible for at least two seconds; the audio does not clip; the label is present; nothing is said that the sheet does not support.
