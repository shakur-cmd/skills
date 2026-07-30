# Skills

Small, composable agent skills for **meeting people and reaching out** — cold openers, conversation prep, review replies, follow-ups, and business-card capture.

Each skill is a single `SKILL.md` file: plain instructions any capable model can follow. They're built for [Claude Code](https://claude.com/claude-code), but nothing in them is Claude-specific — copy one into whatever agent setup you use.

## Install

Everything, into the current project (`./.claude/skills`):

```bash
curl -fsSL https://raw.githubusercontent.com/shakur-cmd/skills/main/install.sh | bash
```

Just the ones you want:

```bash
curl -fsSL https://raw.githubusercontent.com/shakur-cmd/skills/main/install.sh | bash -s -- cold-opener follow-up-writer
```

Globally, for all your projects (`~/.claude/skills`):

```bash
curl -fsSL https://raw.githubusercontent.com/shakur-cmd/skills/main/install.sh | bash -s -- --global
```

Or skip the script and copy any `skills/<name>/` folder wherever you like. The files are yours — edit them to match how you actually write.

## The skills

| Skill | What it does | Typical trigger |
| --- | --- | --- |
| [`cold-opener`](skills/cold-opener/SKILL.md) | Personalized first lines for cold email/DMs, built only on facts actually found | "write an opener for this prospect" |
| [`conversation-connectors`](skills/conversation-connectors/SKILL.md) | Common-ground hooks, talking points, and one smart question before you meet someone | "help me prep for meeting Dana tomorrow" |
| [`review-reply-drafter`](skills/review-reply-drafter/SKILL.md) | Owner replies to customer reviews — warm for praise, liability-aware for complaints | "reply to this 1-star review" |
| [`follow-up-writer`](skills/follow-up-writer/SKILL.md) | Messy meeting notes → a short follow-up email with one clear next step | "I met someone at the conference, help me follow up" |
| [`card-to-contact`](skills/card-to-contact/SKILL.md) | Business-card photo → clean structured contact data, honest about OCR uncertainty | share a card photo (model-invoked) |

They compose: `card-to-contact` → `conversation-connectors` → `follow-up-writer` is the whole conference loop.

## Design principles

- **Small.** One job per skill, under 100 lines each. Easy to read before you trust it.
- **Grounded.** Every skill forbids inventing facts — no guessed email addresses, no fabricated common ground, no made-up review details.
- **Yours.** The installer copies files, it doesn't manage them. Edit freely; there's nothing to break.

## On your phone

The `card-to-contact` → `cold-opener` → `conversation-connectors` loop is being built into a mobile app for conference floors — scan a card, get your opener and talking points in under a minute. Coming soon from [CodeMyVibe](https://codemyvibe.com); watch this repo for the link.

## License

[MIT](LICENSE). Built by [AbdulShakur Hasan Abdullah](https://codemyvibe.com) at CodeMyVibe. Inspired by the format of [mattpocock/skills](https://github.com/mattpocock/skills).
