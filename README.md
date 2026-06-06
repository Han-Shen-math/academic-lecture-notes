# Academic Lecture Notes

This repository collects three lecture-note PDFs that I am maintaining and revising over time.

## Notes

| Title | File |
| --- | --- |
| AI Emergence Math: 600 Lectures | [notes/ai_emergence_math_600_lectures_en_cover.pdf](notes/ai_emergence_math_600_lectures_en_cover.pdf) |
| Modern Probability Foundations | [notes/modern_probability_foundations.pdf](notes/modern_probability_foundations.pdf) |
| Financial Math Basic | [notes/financial_math_basic_shenhan.pdf](notes/financial_math_basic_shenhan.pdf) |

## Latest Update

Updated on 2026-06-06:

- Modern Probability Foundations: Section 2.4, Lebesgue integrals and integrable functions.
- Financial Math Basic: Lecture 007, attainable payoff sets, arbitrage cones, and positive payoff cones.
- AI Emergence Math: Lectures 001 and 002, vector spaces, AI representations, subspaces, span, and linear closure.

## About This Project

These notes were drafted with help from ChatGPT Pro and typeset/organized with help from Codex. I am keeping that process explicit because it is part of the learning experiment: use AI to quickly build a lecture-note scaffold, then keep reading, checking, correcting, annotating, and improving it as my own understanding grows.

They should be read as evolving study notes, not as authoritative textbooks. I will continue updating them as I find mistakes, add explanations, improve notation, and record my own learning reflections.

I also recommend this workflow to other learners: choose an academic topic you genuinely care about, ask AI to help you assemble a first-pass set of lectures, and then turn that draft into a personal learning project through verification, revision, exercises, and commentary.

## Update Workflow

The original PDF locations are recorded in [sources.json](sources.json). To refresh the PDFs in this repository from those source locations, run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/update-notes.ps1
```

To refresh, commit, and push in one run after a GitHub remote has been configured:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/update-notes.ps1 -Commit -Push -Message "Update lecture notes"
```

## License

No open-source license has been selected yet. Please treat the notes as shared study materials for reading and discussion unless a license is added later.
