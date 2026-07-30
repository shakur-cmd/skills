---
name: cold-opener
description: Write personalized, human-sounding first lines for a cold email or DM to a specific prospect. Use whenever the user wants to reach out cold to a person or company — "write an opener for", "first line for this prospect", "personalize this cold email", "how do I start an email to [company]" — even if they only give you a URL, a LinkedIn profile, or pasted text about the target. Also use when reviewing or improving the first line of an existing cold email draft.
---

# Cold Opener

Write first lines that prove the sender actually looked at the recipient. The opener's only job is to earn the second sentence — it does that by being specific, recent, and impossible to send to anyone else.

## Inputs

Any of: a company URL, a person's name + company, a LinkedIn profile, pasted bio/about text, or a screenshot. Also capture **the sender's offer in one line** (what they sell and to whom) — if the user didn't say, ask, because an opener that can't bridge to the pitch is a trivia line.

If you can browse, fetch what you're given plus 2-3 obvious neighbors (about, blog, news) — one homepage rarely holds a usable fact. If pages won't load and the user gave you nothing else, say so and ask for pasted material — never invent facts to fill the gap. If the site's front-facing brand or person differs from what the user named, flag it before writing — personalizing to the wrong entity is the worst outcome cold email has.

## Method

1. **Gather.** Pull concrete, dated details: a recent blog post or launch, a hiring page, a product change, a talk or podcast appearance, a customer review they got, a tech or design choice visible on their site. Ignore homepage marketing copy — everyone's homepage says they're passionate about excellence.
2. **Select.** Keep the 2-3 facts that are most specific and most recent. A fact from last month beats a better fact from 2022. Small-business sites often carry no dates at all — then specificity substitutes for recency (a named case study, an exact claim, a visible gap). Never attach a date you didn't find.
3. **Draft 5 openers**, each from a different angle:
   - Their recent work ("Saw you shipped X…")
   - A pointed observation about a problem you noticed
   - A genuine, narrow compliment (about one specific thing, not the company)
   - A question only someone who did the reading could ask
   - Shared context, if any truly exists (event, mutual connection, same stack)
4. **Filter hard.** For each line ask two questions: *could this be sent to any other company?* and *can the sender's next sentence plausibly follow from it?* If either fails, cut or sharpen. Then cut anything that opens with "I hope this finds you well", "I came across your website", or flattery without a specific object.

## Output format

For each opener, show the fact it's built on, then the line:

```
1. [fact: their July case study on cutting install times]
   "The install-time case study you published this month made me rethink how we schedule our own crews."
```

End with a one-line note on which opener you'd send and why.

## Quality bar

- One sentence each, under 25 words where possible.
- Reads like a person typed it, not a template with a variable filled in.
- Every claim traces to something you actually found. If you inferred it, say "likely" — or leave it out.
- No exclamation marks doing the work that specificity should do.

## Example

Input: `https://acmegutters.example`, sender sells winter-maintenance scheduling software to home-service companies. The gutter company's latest blog post covers ice-dam prevention; their booking page says "call for availability."

Output:

```
1. [fact: latest blog post argues heat cables are usually the wrong ice-dam fix]
   "Your ice-dam piece is the first one I've read that says heat cables are usually the wrong fix."
2. [fact: booking page says "call for availability" — no online scheduling]
   "You've written three posts on winter prep, but the only way to book you for it is a phone call — is that on purpose?"
...
Send #2: it names a gap the sender's product exists to close, so the second sentence writes itself.
```
