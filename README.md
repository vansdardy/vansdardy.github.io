# vansdardy.github.io

My personal site — an extended résumé, projects, and about/contact — built with
**Jekyll** and deployed to **GitHub Pages via GitHub Actions**. Custom theme,
fully content-driven: I edit YAML and Markdown, never HTML/CSS.

Live at **https://vansdardy.github.io**.

---

## The edit → live loop

```
edit a _data/*.yml or .md file  →  git commit  →  git push
        →  GitHub Actions runs `jekyll build` (~1–2 min)
        →  built site deployed to Pages  →  live at /
```

Pushing to `main` is all it takes. The build runs on GitHub's servers (the
`.github/workflows/deploy.yml` workflow); you don't build anything locally.
After the green check, allow a few seconds for the CDN + your browser cache —
hard-refresh (Ctrl/Cmd-Shift-R) if you don't see the change.

**If a build ever fails:** open the repo's **Actions** tab, click the most
recent run, and read the red step — the error (usually a YAML typo or a bad
Liquid tag) is printed inline. Fix, commit, push again.

---

## Where each section lives (this is the part you'll use)

| To change…              | Edit this file                          |
| ----------------------- | --------------------------------------- |
| **Résumé / CV**         | `_data/resume.yml`                      |
| **About blurb** (home)  | `index.md` (the Markdown body)          |
| **A project**           | a file in `_projects/` (one per project)|
| **Add a project**       | copy any `_projects/*.md` to a new name |
| **Contact / links**     | `_data/social.yml`                      |
| **Nav menu**            | `_data/nav.yml`                         |
| **Site title / SEO**    | `_config.yml` (top block)               |
| **Colors / fonts**      | `assets/css/main.scss` (`:root` tokens) |

You never need to touch anything in `_layouts/` or `_includes/` — those are the
one-time templates that turn your data into pages.

### Worked example: adding a job to the résumé

Open `_data/resume.yml`, find the `work:` list, and add an entry. Each `-`
starts a new job; indentation matters (two spaces):

```yaml
work:
  - company: "New Co"
    position: "Backend Engineer Intern"
    url: "https://newco.example"      # optional, links the company name
    location: "Remote"
    start: "Jun 2026"
    end: "Present"                      # omit `end` for ongoing
    highlights:                        # bullet points; **Markdown** works
      - "Shipped a billing service handling **$2M/mo** with zero downtime."
      - "Cut p99 latency 60% by adding a read-through cache."
```

Save → commit → push. Within ~2 minutes `/resume/` shows the new job. Every
section in `resume.yml` (`work`, `education`, `skills`, `awards`) follows the
same pattern, and any section you delete simply disappears from the page.

### Worked example: adding a project

```bash
cp _projects/cli-task-runner.md _projects/my-new-thing.md
```

Edit the front matter (the block between the `---` lines) — `title`, `summary`,
`year`, `tech`, `repo`, and `featured: true` if you want it on the home page —
then write the body as normal Markdown. It appears on `/projects/`
automatically.

---

## Folder structure

```
_config.yml            site settings, plugins, collections  (rarely touched)
Gemfile                pinned Jekyll + plugin versions
index.md               home / about page (body = your about blurb)
resume.md              thin shell; the résumé renders from _data/resume.yml
projects.html          the /projects/ listing (auto-lists _projects/)
404.html               not-found page

_data/                 ← YOUR CONTENT (yaml)
  resume.yml             the entire CV
  social.yml             contact + social links
  nav.yml                top navigation

_projects/             ← YOUR CONTENT (one markdown file per project)

_layouts/   _includes/   templates — the one-time HTML/Liquid work (leave alone)
_sass/ + assets/css/   styling; colors live in assets/css/main.scss :root
assets/js/             tiny theme-toggle script
assets/img/            favicon

.github/workflows/     the build-and-deploy pipeline
```

### Pinning `Gemfile.lock` (one-time, optional)

The build is already reproducible via the version constraints in `Gemfile` plus
the Actions bundler cache. To additionally freeze the exact transitive
dependency versions, grab the lockfile CI resolved and commit it:

1. Actions tab → the latest successful run → **Artifacts → `gemfile-lock`** → download.
2. Unzip; place `Gemfile.lock` in the repo root; commit + push.

(It wasn't hand-written here on purpose: an inaccurate lockfile fails the build.)
After committing it, you can delete the "Upload resolved Gemfile.lock" step in
`.github/workflows/deploy.yml` if you like.

### Adding a "Writing / Essays" section later (no rebuild needed)

The Projects section is a Jekyll *collection*. To add essays, mirror it:
add a `collections: essays:` block to `_config.yml`, create an `_essays/`
folder of Markdown files, add a listing page like `projects.html`, and a nav
link in `_data/nav.yml`. The existing layouts/styles already cover it.

---

## How it all fits together (the mental model)

Your **repo** holds content (YAML + Markdown) and templates. On every push to
`main`, **GitHub Actions** spins up a runner, installs the pinned gems, and runs
**`jekyll build`**, which merges your data into the templates to produce a static
`_site/` folder. That folder is uploaded as an **artifact** and handed to the
**deploy-pages** action, which publishes it to **GitHub Pages**, served at the
domain **root** (`/`) because this is a user page with an empty `baseurl`. So:
*repo → Actions builds → artifact deployed to Pages → live at root.*
