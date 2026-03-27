# cosenal.github.io

Personal site built with Jekyll and GitHub Pages.

## Run locally

Use Ruby `3.3.4` from `.ruby-version`, then install gems once:

```bash
bundle install
```

Start the local server:

```bash
bundle exec jekyll serve
```

Open:

```text
http://127.0.0.1:4000/
```

Useful variant:

```bash
bundle exec jekyll serve --livereload
```

## Talks

Talk pages live in `_talks/`.

Add a new talk folder like this:

```text
_talks/<slug>/index.md
_talks/<slug>/slides.pdf
```

Use front matter like this in `_talks/<slug>/index.md`:

```yaml
---
title: My talk title
slug: my-talk-slug
permalink: /talks/my-talk-slug/
event: Event name
location: City
date: 2026-03-27
video_url: https://www.youtube.com/watch?v=...
---
```

Each talk page is published at `/talks/<slug>/`.

If you want local slides for a talk, put them here:

```text
_talks/<slug>/slides.pdf
```

The talk page will link to that file automatically, and the browser will be asked to download it as `<slug>.pdf`.

If a talk has no slides, set this in the front matter:

```yaml
slides_url: false
```
