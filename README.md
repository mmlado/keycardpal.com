# keycardpal.com

Static landing page for [Keycard Pal](https://github.com/mmlado/keycard-pal), served by
GitHub Pages at <https://keycardpal.com>.

One HTML file, no build step, no dependencies. Fonts come from Google Fonts; everything
else is in `assets/`.

## Layout

| Path | What it is |
| ---- | --------- |
| `index.html` | The whole page, styles inline |
| `assets/screenshots/` | App screenshots, 560 px wide WebP, generated from `fastlane/metadata/android/en-US/images/phoneScreenshots` in the app repo |
| `assets/badges/` | Store badges: Google Play and F-Droid official artwork, GitHub and Obtainium from the app repo |
| `assets/icon.png` | App icon |
| `CNAME` | `keycardpal.com` |

`privacy.html` is **not** committed here, and is gitignored. The workflow fetches
`docs/privacy.html` from the app repo at deploy time, so the policy has a single source and
the copy served here cannot drift from the one at `fdroid.keycardpal.com/privacy.html`.

For a local preview, run `./sync-privacy.sh` first: it copies the file from a sibling
`../keycard-pal` checkout, or downloads it when there is none.

## Deploying

`.github/workflows/pages.yml` runs on every push to `main` and on manual dispatch. Set
Settings → Pages → Source to **GitHub Actions**.

DNS for the apex domain:

```text
A     keycardpal.com    185.199.108.153
A     keycardpal.com    185.199.109.153
A     keycardpal.com    185.199.110.153
A     keycardpal.com    185.199.111.153
CNAME www               mmlado.github.io
```

`fdroid.keycardpal.com` stays where it is, served from the app repo's own Pages
deployment. A GitHub Pages site takes only one custom domain, which is why the landing
page lives in its own repository.

## Updating screenshots

From a checkout of the app repo, with its `node_modules` installed:

```sh
node -e "
const sharp=require('sharp'),fs=require('fs'),p=require('path');
const src='fastlane/metadata/android/en-US/images/phoneScreenshots';
const out='../keycardpal-site/assets/screenshots';
for(const f of fs.readdirSync(src))
  sharp(p.join(src,f)).resize({width:560,withoutEnlargement:true})
    .webp({quality:82}).toFile(p.join(out,p.basename(f,'.png')+'.webp'));
"
```

## Facts that have to stay true

Change these here whenever they change in the app repo:

- Package IDs `com.keycardpal` and `com.keycardpal.offline`
- Signing certificate SHA-256 and the F-Droid repository fingerprint
- Install channels, and which ones are still marked coming soon
- The affiliate link carries the referral code and is labelled as an advertisement wherever
  it appears

## License

MIT, same as the app.
