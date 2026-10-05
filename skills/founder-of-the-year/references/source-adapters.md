# Source adapters: find what you can reach, then gather before you ask

The founder has usually already written down most of what a profile needs, but every founder keeps it somewhere different: a notes vault, a CRM, a code host, a shared drive, a folder of proposals, an older draft. So the skill does not assume any particular system. It first finds out what it can reach from where it is running, then reads what it finds, and only then asks the founder for what nobody wrote down. Everything here is read-only.

## Step 0: discover what you can reach

Spend a few minutes on an inventory before reading anything in depth. Record it at the top of `private/gathered.md` so the founder can see what was and was not available.

| Look at | How | What it tells you |
|---|---|---|
| Connected tools | The MCP servers and connectors available in this session (CRM, docs, drive, chat, code host, calendar) | Which systems can be read directly |
| Signed-in command-line tools | `gh auth status`; `az account show`; `aws sts get-caller-identity`; `wsl`; whatever the environment has | Which code hosts and clouds can be queried read-only |
| The working folder and the founder's documents | Folders of Markdown with `[[wikilinks]]` or an `.obsidian` folder (a notes vault); `*.csv` and `*.xlsx` exports; folders named clients, proposals, case-studies, brand, press; earlier drafts, handbooks, interview notes | Where the founder's own writing lives |
| Other machines | `~/.ssh/config` hosts; a path the founder names | A vault or project folder kept elsewhere (ask before using a host the founder has not mentioned) |
| The founder's websites | The live pages: about, team, case studies, portfolio, pricing, blog | The company's own account of itself, and the claims an editor will test |
| LinkedIn and other profiles | Whether a data export exists in the founder's folders, whether a signed-in browser is available and permitted (Cowork: the machine's browser; Claude Code: Claude in Chrome or the browser pane), or whether the public company pages render | The founder's current headline and About, roles, company descriptions, recommendations and posts (see the adapter below) |
| Public registers | Company register, domain records, web archive | Entities, officers, dates |
| Code hosts | Organisation or user repositories: names, descriptions, created and pushed dates, READMEs of products | Dated evidence that work exists |

Then write three lists: what you can read now, what exists but you cannot reach (and would need the founder to export or point you at), and what you deliberately will not open (personal, family, health, employment, finance). Do not ask the founder about anything in the first list.

## Ground rules for every source

- **Scope to the assignment.** Access to a system is not a reason to open unrelated material. Skip personal, family, health, employment and financial folders unless the founder points you at them for this piece.
- **Never copy credentials.** Filter lines that look like passwords, tokens, keys or connection strings before reading a file (for example `grep -v -i -E "password|secret|token|api[_-]?key|bearer|BEGIN (RSA|OPENSSH)"`). Never enter a password or sign in on the founder's behalf.
- **Classify the source.** Founder-authored, company-published, client-authored, independent record, or an agent's working note. An internal note establishes what the founder's team believed on that date, not what is true.
- **Figures stay private by default.** Revenue, fees, equity, funding, salaries, client prices and headcount are gathered for context and kept out of public text unless the founder clears the exact wording.
- **Third parties stay unnamed** until the ledger records permission: clients, partners, staff, suppliers, family.
- **Prefer the primary record.** A CRM stage beats a summary of it; a repository date beats a note about the repository; the live site beats a description of the site.

## Adapters

Use whichever of these the inventory turned up. Each row says what the source can and cannot prove.

| Source | How to reach it | What it gives a profile | What it does not prove | Keep out |
|---|---|---|---|---|
| **Notes vault** (Obsidian, Logseq, any Markdown folder; often on another machine over SSH) | `find`/`grep` for client, project and brand notes; read hub notes and indexes first (`HOME.md`, `*MOC*.md`, `index.md`, `client-registry.md`) | The client list and what each engagement was; project timelines; the founder's own stated mission, rules and decisions; delivery records | That a client is paying, satisfied or willing to be named; that a plan was executed | Credentials, personal folders, agent chatter, anything marked internal-only |
| **CRM** (HubSpot, Pipedrive, Salesforce, a spreadsheet; via connector or export) | Deals and companies with stage, created and closed dates; no contact details needed | Which engagements are real and current; the shape of the business (retainers, one-offs, referrals) | Outcomes for the client; anything about why | Amounts, contact details, pipeline figures |
| **Code host** (GitHub, GitLab, Bitbucket; CLI or API) | Repository list with created and pushed dates and descriptions; PR counts and contributors for a flagship project; README of a product you will describe. Go gently on shared tokens | Dated evidence that work exists and when it was active; who contributed; what a product does by its own description | Deployment, adoption, personal authorship or results | Private repo contents beyond what the sentence needs; secrets; client data |
| **Documents and drives** (SharePoint, Google Drive, OneDrive, a proposals folder) | Search by client or project name; read the dated planning document, proposal or handover, not the whole folder | A dated plan, scope or handover that corroborates the founder's account | Delivery or outcome | Contracts' commercial terms, personal files |
| **Case studies and the founder's own sites** | Fetch the live pages (raw HTML, not a summary) | The company's own account of its offer and clients; stages; prices; claims an editor will test | Any outcome or figure, until substantiated | Nothing to keep out, but audit every figure and superlative (see `interview-and-evidence.md`) |
| **Client intelligence notes** (per-client briefs, research, proposals) | Vault, CRM attachments or drive | What each client does, what was built, when it went live, how the relationship grew, why the client came | Permission to name; satisfaction | Commercial terms, contact details, the client's internal information |
| **Live client sites** | Fetch and look | What visibly works today (a booking form, a shop, a members' login); a credit to the founder's company | Who built it, when, or what it changed for the business | Nothing behind a login |
| **Public registers** (Companies House and equivalents) | Official search | Entity, incorporation date, officers, status | Trading brands, ownership of brands, performance | Date of birth, home address, middle names |
| **LinkedIn** (the founder's profile, the businesses' company pages) | Usually behind a sign-in wall for fetch tools, so use what you can reach: the founder's data export (Settings, "Get a copy of your data": profile, positions, recommendations, posts), a browser the founder has signed in with when they ask you to use it (in Cowork, the machine's own browser; in Claude Code, the Claude in Chrome extension or the built-in browser pane, whichever is connected), company pages that render publicly, or the founder pasting the text. Read only; never sign in yourself, and never copy a signed image or page address into a note | The founder's exact current headline and About (never replace them silently); role titles and dates as the founder states them; company page descriptions; **recommendations**, which are other people's words about the founder and the best third-party testimony a profile can get; the founder's own posts as exact quotable words; each company page's logo image, which is the business's own brand mark when the founder's files hold none | Dates and titles are self-authored; a recommendation is one person's view and needs that person's permission before it is quoted by name | Connection lists, messages, anyone else's profile data |
| **Earlier drafts, handbooks, interview records** | The founder's documents or an earlier assignment folder | Agreed positioning, approved personal themes, recorded restrictions | Corroboration of anything | Copy them into `private/legacy/` or `private/interview/`, never `public/` |
| **Email, chat, calendar** | Only when the founder asks, and only the thread they name | A date or a decision | Anything beyond that thread | Everything else |

If a system the founder relies on has no adapter here, treat it the same way: find the primary record, note its date and author, classify it, and record what it does and does not establish.

## Output: `private/gathered.md`

Keep it short and useful:

0. **Inventory.** What you could reach, what you could not, what you did not open.
1. **Entity map.** Legal entities, trading brands, who runs what, formal roles (client, partner, board) in one paragraph.
2. **Businesses.** For each: what it does in the company's own words, current stage, dated evidence.
3. **Clients and projects.** A table: descriptor, what was built, status, dated evidence, naming permission (yes/no/unknown), fit for the story, and why the client came if the record says.
4. **Flagship project.** The one or two engagements with the strongest story, in enough detail to write a panel: the need, the founder's role, collaborators, milestones with dates, current state, what is public about it.
5. **Timeline.** Dated milestones from registers, repositories and the founder's own records.
6. **Exact words.** Any sentence in the founder's own hand that could be a pull-quote: a motto, a written rule, a typed message. Source and date beside each.
7. **Gaps.** What only the founder can answer, phrased as the questions you will ask, each with the default you will use.

Then add every usable fact to `claim-ledger.tsv` with its source and status, and move on to the one batch of questions.
