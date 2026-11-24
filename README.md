# Discrete Mathematics Nuggets

The content of the course *Discrete Mathematics for Computer Scientists* (DIT984/DIT980), as a collection of ~225 **nuggets**: short, linked pieces of mathematics — definitions, theorems with proofs, alternative proofs, worked examples, puzzles, and exercises with answers.

It is published with the [nugget engine](../nugget-engine) (a separate repository).

## Layout

```
site.md        front page
nuggets/       one Markdown file per nugget (sub-folders only for convenience)
groups/        topics/, lectures/ (reading paths), exercises/ (weekly sets),
               assignments/, exams/
assets/        images and the course's Haskell code (Arithmetic.hs, Combinatorics.hs)
```

The nugget format is described in the engine's README. In short: front matter with `title`, `kind`, `groups`, `requires`, `uses`, `see-also`, `next`; Markdown body with `$…$` math; `[[other-nugget]]` links; exercise answers under a `## Answer` heading.

## Build and preview locally

```
./build.sh                                  # expects the engine in ../nugget-engine
NUGGET_ENGINE=/path/to/nugget-engine ./build.sh
python3 -m http.server -d _site 8000        # open http://localhost:8000
```

## Publish on GitHub Pages

1. Push the engine to `github.com/<you>/nugget-engine` and this repository to `github.com/<you>/<anything>`.
2. In this repository: *Settings → Pages → Source: GitHub Actions*.
3. Every push to `main` builds and publishes the site (`.github/workflows/pages.yml`). If the engine lives elsewhere, set the repository variable `NUGGET_ENGINE_REPO` to `owner/repo`.
4. Optionally set `edit-url` in `site.md` (e.g. `https://github.com/<you>/<repo>/edit/main/`) to get an “edit” link on every nugget.

## Notes on the content

- Answers to **assignment** questions are deliberately not included, and **old exam** questions only have answers where they were worked out in a lecture; the others have hints pointing to related nuggets.
- Dates, deadlines, rooms, submission rules etc. are left out on purpose: nuggets are only about content.
- The two books (Lehman–Leighton–Meyer, *Mathematics for Computer Science*; Lemurell & Jonasson) are referred to but not included.
