# Komolion Fund Website

Marketing/donation site for the Komolion Human Development Fund, a nonprofit funding community-designed projects (education, health, anti-FGM work) in Komolion, Kenya. Content is mostly static prose/photos plus a donation flow (Donorbox); pages describe projects, team, and impact.

Static Jekyll site (Ruby) styled with Bootstrap 5 + Sass, no client-side JS framework.

## Build & run
- `make` or `make serve` — installs deps (npm + bundle), vendors JS, serves at localhost with `JEKYLL_ENV=production`.
- `make build` — production build to `_site/` (generated, do not edit `_site/` directly).
- `make clean` — removes `_site/`, `.sass-cache/`, `node_modules/`, and vendored `assets/js/*.min.js`.
- Vendored JS (`assets/js/jquery.min.js`, `popper.min.js`, `bootstrap.min.js`) is copied from `node_modules` by `make include-vendor-js`; don't hand-edit those files.

## Structure
- `_projects/*.md`, `_team/*.md` — Jekyll collections (output pages). Front matter: projects use `title`, `hero`, optional `photos`; team uses `name`, `position`, `image`, `linkedin`. Filename prefix (`00_`, `01_`...) controls display order.
- `_layouts/default.html` — base HTML shell (head, nav, footer includes). `_layouts/project.html` — wraps project pages with hero image + photo gallery.
- `_includes/` — `navigation.html`, `footer.html`.
- `_data/*.yml` — structured content consumed by pages (`navigation.yml` drives the nav bar, `give_reasons.yml`, `numbers.yml`, `values.yml`).
- Top-level `.html` pages (`index.html`, `give.html`, `team.html`) use front matter variables (e.g. `page.jumbotron-title`) for copy, referenced via Liquid in the body.
- `_sass/*.scss` partials imported by `assets/css/styles.scss`; `_sass/variables.scss` holds Bootstrap color/font overrides — change colors/fonts there, not inline.
- `assets/images/`, `assets/pdf/` — static media referenced by absolute paths (`/assets/images/...`).

## Conventions
- HTML/Liquid attributes use single quotes (`class='...'`), matching existing files — keep new markup consistent.
- Use Bootstrap utility classes (e.g. `container-xxl`, `row`, `btn btn-primary`) rather than custom CSS when possible; add custom rules to the relevant `_sass` partial only when Bootstrap can't do it.
- New projects/team members: add a new numbered markdown file to `_projects/`/`_team/` with the same front matter shape as existing entries, plus any images under `assets/images/projects/` or `assets/images/team/`.
- `_config.yml` `exclude`s Ruby/Node tooling files from the built site; don't add new top-level dev files without excluding them there.
