---
name: conversation-connectors
description: Prepare to meet or message a specific person — common-ground hooks, talking points, and smart questions grounded in their public footprint. Use whenever the user is about to meet someone (conference, sales call, interview, coffee chat, networking event) or wants to message someone on LinkedIn/X and asks "what should I say to", "help me prep for meeting", "what do I have in common with", or gives you a name + company and a meeting context.
---

# Conversation Connectors

Turn a name and a company into things worth saying. The goal is not trivia about the person — it's hooks: points of genuine overlap or interest that make a conversation easy to start and worth having.

## Inputs

A person (name, title, company — or a card-to-contact extraction, or a LinkedIn/X profile) plus the context: where you're meeting them or which platform you're messaging on. If no context is given, ask one question: in person or in writing?

## Method

1. **Research the person, then the company.** Look for: what they've published or said (posts, talks, interviews), what they're working on now, career path oddities (industry switches, unusual combinations), and what their company shipped or announced recently.
2. **Find the overlap.** Cross-reference against what you know about the user — their work, industry, tools, city, background. Real overlap ranks above interesting facts. "You both moved from agency work to product" beats "their company raised a Series B."
3. **Mark your confidence.** Distinguish *verified* (they wrote it, company announced it) from *inferred* (probably true from context). Never present an inference as fact — opening a conversation with a wrong guess is worse than opening with a question.

## Output format

```
WHO: [one line — name, role, the single most useful thing to know]

CONNECTORS (for a message or DM)
1. [overlap or hook, one line, with source: verified/inferred]
2. ...

SAY THIS (in person)
- [talking point built on something they did]
- [talking point built on shared ground]
- [talking point about where their company is heading]

ASK THIS
- [one question only someone who did the reading could ask — open-ended, not answerable with yes/no]
```

## Quality bar

- Hooks must be usable verbatim — full sentences a person could actually say, not topics.
- Nothing creepy: public professional footprint only. No family, no home city sleuthing, no "I saw you were at X gym."
- If research turns up almost nothing, say so and fall back to strong context-based openers (the event, their talk, their booth) rather than padding with generic questions.

## Example

Input: "Meeting Dana Reyes, Head of Ops at a 40-person HVAC chain, at the ServiceWorld booth tomorrow."

Output (abridged):

```
WHO: Dana Reyes — Head of Ops, came up through dispatch, posts about tech-vs-truck-count tradeoffs.

CONNECTORS
1. Their March post argued software beats adding trucks — you build exactly that kind of software. (verified)

SAY THIS
- "Your point about dispatch software replacing a truck stuck with me — did that hold up this summer?"

ASK THIS
- "What did your dispatchers push back on hardest when you rolled that out?"
```
