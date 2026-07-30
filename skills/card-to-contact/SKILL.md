---
name: card-to-contact
description: Extract structured contact details from a photo of a business card (or a badge, email signature screenshot, or letterhead). Use whenever the user shares an image containing contact information and wants it captured, saved, looked up, or used for outreach — "who is this", "add this contact", "scan this card" — and as the first step before cold-opener or conversation-connectors when the input is a card photo.
---

# Card to Contact

Read a business-card image and return clean, structured contact data. The output feeds directly into CRMs, contact apps, and the `cold-opener` / `conversation-connectors` skills, so structure and honesty about uncertainty matter more than prose.

## Method

1. **Read everything on the image** — front and back if both are shown, all cards if there are several (output one record each).
2. **Assign fields, don't guess them.** A string under the name in italics is probably a title; a string next to a phone icon is a phone. When a value's field is genuinely ambiguous (two numbers, neither labeled), keep both and say so.
3. **Normalize:**
   - Email lowercase. **Never construct an email that isn't printed** — no guessing `first.last@company.com`. Missing means `null`.
   - Phone: digits with country code if determinable from the card (country, city code), otherwise as printed. Label mobile/office/fax when the card does.
   - Website: `https://`, no trailing slash. Social: platform + handle.
4. **Flag OCR risk.** Cards use decorative fonts; `O/0`, `l/1/I`, `rn/m` swaps are common, especially inside email addresses. Anything low-confidence goes in `verify` with what it might be instead.

## Output format

ALWAYS this exact structure — a summary line, then the record:

```
Dana Reyes — Head of Operations, Summit Air LLC (1 card)

{
  "name": "Dana Reyes",
  "title": "Head of Operations",
  "company": "Summit Air LLC",
  "emails": ["dana@summitair.example"],
  "phones": [{"label": "mobile", "value": "+1 555 010 4477"}],
  "website": "https://summitair.example",
  "social": [{"platform": "linkedin", "handle": "danareyes"}],
  "address": "410 Ridge Rd, Boulder, CO 80301",
  "notes": "Back of card: 'NATE-certified, 24hr service'",
  "verify": ["email could read dana@summitalr.example — the 'i' is unclear in the card font"]
}
```

Unreadable or absent fields are `null` (or `[]`), never invented. `notes` captures anything real that doesn't fit a field — taglines, certifications, handwritten additions (handwriting on a card is usually the most important thing on it; transcribe it and say it was handwritten).

## After extraction

If the user's context suggests a next step, offer exactly one: outreach context → offer `cold-opener` or `follow-up-writer`; "save this" → format for their contacts/CRM tool. Don't launch into research unasked.
