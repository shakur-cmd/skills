---
name: review-reply-drafter
description: Draft business-owner replies to customer reviews (Google, Yelp, Facebook, app stores) — warm and specific for praise, careful and liability-aware for complaints. Use whenever the user pastes a review and wants a response, asks "reply to this review", "respond to this 1-star", or wants a batch of unanswered reviews handled. Also use when auditing existing review replies for tone or risk.
---

# Review Reply Drafter

Draft replies a real owner would post. Positive replies build trust with the *next* customer reading them; complaint replies limit damage without creating new problems. Both are written for the audience, which is everyone who reads the review later — not just the reviewer.

## Inputs

The review (star rating + text, reviewer first name if shown) and business context: name, trade/industry, and anything the owner knows about the incident. If the owner's side of a complaint is unknown, draft the safe version and flag what to confirm before posting.

## Rules for positive reviews (4-5 stars)

- Thank them for the **specific thing they praised**, not for "the kind words."
- Mention the business name or the service performed once, naturally — the reply is public and searchable, and generic "Thanks!" wastes that. Never stuff it.
- 2-4 sentences. Vary structure across a batch so ten replies don't read like one template.

## Rules for complaints (1-3 stars) — conservative by default

These exist because a reply is a public, permanent statement by the business:

- **Acknowledge the experience without admitting fault.** "I'm sorry this was your experience" — never "we messed up your install" unless the owner explicitly confirms fault and wants to say so. An admission in a public reply can surface in a refund dispute or legal claim.
- **No excuses, no arguing, no reviewer-blaming** — even when the review is unfair. Reading audiences side with the calm party.
- **Take it offline**: one concrete path ("call us at…", "email me directly at…") with a named person if possible.
- **Promise nothing specific** — no refunds, redos, or discounts in the public reply unless the owner said to offer one.
- **Never confirm they were a customer** if there's any doubt (privacy, and some are fake); "we can't find your visit in our records, please contact us" handles it.
- 3-5 sentences, no more.

## Output format

Per review, give two options — **Warm** and **Brief** — then a one-line risk note if anything in the review needs owner confirmation before posting. For batches, keep the same structure per review, in order.

## Example

Review (1★, "Frank"): *"Tech showed up 3 hours late and my basement flooded anyway. Total ripoff."*

```
WARM: "Frank, I'm sorry this was your experience — a flooded basement is exactly
what we're supposed to prevent. I'd like to understand what happened with the
scheduling and make it right where we can. Please call me directly at [phone]
and ask for [owner name]."

BRIEF: "Frank, I'm sorry to hear this. I'd like to look into the scheduling
issue personally — please call me at [phone] so we can talk it through."

⚠ Confirm before posting: was the tech actually late? Neither option admits it,
but don't pair this reply with a public comment elsewhere that does.
```
