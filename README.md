# BAT's Insurance Adventure

A static, browser-based Property & Casualty learning game for Kansas. The public website is <https://branamops.github.io/BAT/>.

## Run locally for testing

On Windows, double-click **START BAT Adventure.cmd**. It starts a temporary local web server and opens the game in your browser. Keep the server window open while testing; close it when finished. Python 3 is required. This is the single supported local launcher in the repository.

The app is a static site: `index.html`, `app.css`, `app.js`, `data/`, `assets/`, and `BAT.png` work together. Do not open `index.html` directly from File Explorer; the game fetches its JSON files, so use the local launcher or the hosted site.

## Publish changes

The `main` branch is deployed to GitHub Pages by the workflow in `.github/workflows/static.yml`. From a terminal opened in this repository, run:

```powershell
git pull --ff-only origin main
git status --short
git add .
git status --short
git commit -m "Describe the change"
git push origin main
```

Review both `git status` outputs before committing so you do not include unrelated or private files. After pushing, check the repository's **Actions** tab for a successful Pages deployment, then reload the public site. A deployed page can take several minutes to update.

Progress is saved in the current browser's local storage; local testing progress does not sync to the hosted website or to another browser/device.
