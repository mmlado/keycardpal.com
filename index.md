---
layout: home
title: "Keycard Pal — air-gapped Keycard companion for Ethereum and Bitcoin"
description: "Keycard Pal is an air-gapped companion app for the Status Keycard. Review and sign Ethereum and Bitcoin transactions over NFC, and talk to your wallet through animated QR codes. Private keys never leave the card."
og_description: "Air-gapped Keycard companion for Ethereum and Bitcoin. Your keys never leave the card."
permalink: /
---

<section class="hero" markdown="1">
<div class="wrap" markdown="1">
<div markdown="1">

Air-gapped hardware wallet companion
{: .eyebrow}

# Your keys stay on the card.

Keycard Pal signs Ethereum and Bitcoin with a Status Keycard over NFC. It talks to your wallet
through animated QR codes, so nothing you sign has to pass through an internet-connected
device. Free, open source, no telemetry.
{: .lede}

[Get the app](#install){: .btn .btn-primary}
[View the source](https://github.com/mmlado/keycard-pal){: .btn .btn-ghost}
{: .hero-actions}

</div>
<div class="hero-shot" markdown="1">

![Keycard Pal reviewing an Ethereum transaction: chain, amount, recipient and fees](/assets/screenshots/03_eth_transaction.webp){: width="560" height="996"}

</div>
</div>
</section>

<div class="strip" markdown="1">
<div class="wrap" markdown="1">

- Private keys never leave the card
- No accounts, no analytics, no telemetry
- MIT licensed
- Reproducible release builds
- Offline Android build with no internet permission

</div>
</div>

<section id="how" markdown="1">
<div class="wrap" markdown="1">

How it works
{: .eyebrow}

## Four steps, no cable.

Your everyday wallet stays watch-only. Keycard Pal holds nothing and connects to nothing.
{: .lede}

<div class="steps" markdown="1">
<div class="step" markdown="1">

### Wallet shows a request

[Ambire](https://www.ambire.com), MetaMask, Sparrow or any wallet that speaks the same UR
format renders the transaction as a QR code. Keycard keeps
[a list of wallets that support it](https://keycard.tech/wallets).

</div>
<div class="step" markdown="1">

### Scan and review

Keycard Pal decodes it and lays out what you are actually signing, in words.

</div>
<div class="step" markdown="1">

### Tap the Keycard

Enter your PIN, hold the card to the phone. The card signs; the key never moves.

</div>
<div class="step" markdown="1">

### Show the signature back

The signature goes back as an animated QR code. Your wallet broadcasts it.

</div>
</div>

</div>
</section>

<section id="features" markdown="1">
<div class="wrap" markdown="1">

Features
{: .eyebrow}

## Read it before you sign it.

Requests the app can decode are laid out in full before the card is ever asked to sign.
Everything below works with no network connection.
{: .lede}

<div class="grid" markdown="1">
<div class="card" markdown="1">

### Ethereum transactions

Legacy, EIP-1559 and EIP-2930. Chain name, amount in the native currency, recipient, fees and
decoded calldata.

</div>
<div class="card" markdown="1">

### EIP-712 typed data

Decoded review with dedicated screens for `Permit`, `PermitSingle` and Safe transactions, plus
the digests the card signs.

</div>
<div class="card" markdown="1">

Coming soon
{: .tag .tag-soon}

### Clear signing

EIP-7730 descriptors will turn any contract call into plain rows from a bundled registry
snapshot. Today a built-in parser covers ERC-20 and the Uniswap Universal Router.

</div>
<div class="card" markdown="1">

### Personal messages

EIP-191 and Sign-In with Ethereum requests are signed on the card. The payload is shown as its
raw bytes; a readable message review is still to come.

</div>
<div class="card" markdown="1">

### Bitcoin

PSBT signing with a row per output and the fee, and BIP-322 message signing.

</div>
<div class="card" markdown="1">

### Wallet export

Watch-only keys out to [Ambire](https://www.ambire.com), MetaMask, Ledger Live and Bitget as
UR QR codes, plus standard Bitcoin account exports other watch-only wallets can import.

</div>
<div class="card" markdown="1">

### Key material

Generate a key pair on the card, import a BIP-39 phrase of 12 or 24 words with an optional
passphrase, SLIP-39 shares, or scan a SeedQR.

</div>
<div class="card" markdown="1">

### Genuine card check

The card's certificate is verified before pairing, and an unrecognised one is brought to you
before anything is written.

</div>
<div class="card" markdown="1">

### Card management

PIN, PUK and duress PIN, pairing slots, card name, factory reset. Nothing about your card is
stored on the phone.

</div>
</div>

## Online extras, off until you turn them on.
{: .subhead}

The standard build can reach the network for these four. Each one ships disabled, and none of
them ever sees a private key.
{: .lede}

<div class="grid" markdown="1">
<div class="card" markdown="1">

Opt-in
{: .tag}

### WalletConnect

Connect a dApp straight to Keycard Pal instead of scanning codes, and approve its signing
requests on the same review screens. You supply your own Reown Project ID.

</div>
<div class="card" markdown="1">

Opt-in
{: .tag}

### Tenderly simulation

Simulate a transaction before you sign and see the balance changes it would cause. You supply
your own Tenderly account and API key.

</div>
<div class="card" markdown="1">

Opt-in
{: .tag}

### ENS names

Reverse-resolve addresses to `.eth` names. A public RPC endpoint is filled in when you turn it
on, and you can change it to any endpoint you like.

</div>
<div class="card" markdown="1">

Opt-in
{: .tag}

### Token images

Fetch token logos from the URLs in the bundled token list. Token symbols and decimals are
bundled either way.

</div>
</div>

Nothing here is enabled by default, no key or credential is shipped with the app, and no
traffic reaches the developer. If you would rather not have the option at all, install
**Keycard Pal Offline** on Android, which has no internet permission in its manifest.
{: .note}

</div>
</section>

<section id="variants" markdown="1">
<div class="wrap" markdown="1">

Two Android builds
{: .eyebrow}

## Pick how much network you want.

Both sign and manage keys identically. They differ in one line of the Android manifest. The
iOS app is the standard build.
{: .lede}

<div class="variants" markdown="1">
<div class="variant accent" markdown="1">

### Keycard Pal

com.keycardpal
{: .pkg}

- Everything in the offline build
- WalletConnect, Tenderly simulation, ENS names and token images available
- Each of them off until you turn it on in Settings

</div>
<div class="variant" markdown="1">

### Keycard Pal Offline

com.keycardpal.offline
{: .pkg}

- No `INTERNET` permission in the manifest
- The online code is not in the build, not merely switched off
- Signing, key management and wallet export, unchanged

</div>
</div>

</div>
</section>

<section id="screens" markdown="1">
<div class="wrap" markdown="1">

Screenshots
{: .eyebrow}

## What it looks like.

<div class="shots">
<figure><img src="/assets/screenshots/01_welcome.webp" width="560" height="996" loading="lazy" alt="Welcome screen" /><figcaption>Welcome</figcaption></figure>
<figure><img src="/assets/screenshots/02_scan_qr_code.webp" width="560" height="996" loading="lazy" alt="Scanning an animated QR code" /><figcaption>Scan a request</figcaption></figure>
<figure><img src="/assets/screenshots/03_eth_transaction.webp" width="560" height="996" loading="lazy" alt="Ethereum transaction review" /><figcaption>Ethereum review</figcaption></figure>
<figure><img src="/assets/screenshots/04_eip712_permit.webp" width="560" height="996" loading="lazy" alt="EIP-712 permit review" /><figcaption>EIP-712 permit</figcaption></figure>
<figure><img src="/assets/screenshots/05_btc_psbt.webp" width="560" height="996" loading="lazy" alt="Bitcoin PSBT review" /><figcaption>Bitcoin PSBT</figcaption></figure>
<figure><img src="/assets/screenshots/06_signature_qr.webp" width="560" height="996" loading="lazy" alt="Signature returned as a QR code" /><figcaption>Signature out</figcaption></figure>
<figure><img src="/assets/screenshots/07_seed_phrase.webp" width="560" height="996" loading="lazy" alt="Recovery phrase backup" /><figcaption>Recovery phrase</figcaption></figure>
<figure><img src="/assets/screenshots/08_pin_pad.webp" width="560" height="996" loading="lazy" alt="PIN entry" /><figcaption>PIN entry</figcaption></figure>
</div>

</div>
</section>

<section id="install" markdown="1">
<div class="wrap" markdown="1">

Install
{: .eyebrow}

## Available on Android and iOS.

Google Play carries the standard Android build and the App Store carries the iOS app. The
developer-signed APKs on GitHub and in the F-Droid repository below carry both Android builds,
including Keycard Pal Offline.
{: .lede}

[![Get the APK on GitHub](/assets/badges/badge_github.png)](https://github.com/mmlado/keycard-pal/releases/latest)
[![Get it on Obtainium](/assets/badges/badge_obtainium.png)](https://apps.obtainium.imranr.dev/redirect.html?r=obtainium://add/https://github.com/mmlado/keycard-pal)
[![Get it on F-Droid, from the developer's own repository](/assets/badges/badge_fdroid.png)](https://fdroid.keycardpal.com/repo?fingerprint=24EB891A8A617F8BF20892CB0CF9267709BA94056E64242AD9EDF638C2FED3D2)
[![Get it on Google Play](/assets/badges/badge_play.png)](https://play.google.com/store/apps/details?id=com.keycardpal)
[![Download on the App Store](/assets/badges/badge_appstore.svg)](https://apps.apple.com/app/keycard-pal/id6777478235)
{: .badges}

<div class="soon" markdown="1">

F-Droid main repository — coming soon
{: .pill}

</div>

The Play copy is re-signed by Google Play App Signing; the GitHub and F-Droid copies are
signed by the developer. Two different signatures means one cannot update the other, so pick a
source and stay with it. The F-Droid repository above is the developer's own, serving the same
APKs that are attached to each GitHub release.
{: .note}

<div class="facts">
<div class="card">
<dl>
<dt>F-Droid repository URL</dt>
<dd>https://fdroid.keycardpal.com/repo/</dd>
<dt>Repository fingerprint</dt>
<dd>24EB891A8A617F8BF20892CB0CF9267709BA94056E64242AD9EDF638C2FED3D2</dd>
</dl>
</div>
<div class="card">
<dl>
<dt>Signing certificate SHA-256</dt>
<dd>A8:3C:11:4B:1F:42:01:DA:FB:D0:3E:22:1F:1C:29:28:EC:B5:2B:78:BD:A5:E9:3F:29:6F:ED:F2:29:8E:54:6B</dd>
<dt>Requirements</dt>
<dd>Android 7.0 (API 24) with NFC, or an iPhone 7 or later on iOS 15.1. A Keycard.</dd>
</dl>
</div>
</div>

Every release attaches `SHA256SUMS.txt` so you can check an APK before installing it, plus
per-architecture splits for a smaller download. For most people the universal APK is the right
one.
{: .fine}

</div>
</section>

<section id="card" markdown="1">
<div class="wrap" markdown="1">

The hardware
{: .eyebrow}

## Keycard Pal needs a Keycard.

The app is the companion, not the wallet. Signing happens on a Status Keycard, an NFC smart
card you hold to the back of the phone. No USB, no Bluetooth, no battery. Cards are sold at
[keycard.tech](https://get.keycard.tech/vuxxnf).
{: .lede}

<div class="disclosure" markdown="1">

Advertisement
{: .label}

The link above, and the Buy a Keycard links in the Android app, are affiliate links: the
developer earns a commission on purchases made through them. No feature depends on buying
through them, every feature of the app is free, and a Keycard bought anywhere works exactly
the same. The iOS app carries no affiliate link and points at the product site instead.

</div>

</div>
</section>

<section id="built" markdown="1">
<div class="wrap" markdown="1">

How it is built
{: .eyebrow}

## Stated up front.

Keycard Pal is developed with substantial help from AI coding assistants (Claude and Codex). I
decide what gets built, read and test what goes in, and maintain it myself.
{: .lede}

What keeps that honest is in the repository: a Jest suite that runs on every pull request,
architecture decision records explaining why things are the way they are, a check that the
offline build carries no online code, and release APKs that anyone can rebuild byte for byte.
Fixes that belonged upstream were sent upstream. Every release is tested on real Keycards and
real phones before it ships.
{: .muted}

[Read the code](https://github.com/mmlado/keycard-pal){: .btn .btn-ghost}
[Privacy policy](/privacy.html){: .btn .btn-ghost}
{: .hero-actions}

</div>
</section>

<section id="donate" markdown="1">
<div class="wrap" markdown="1">

Donations
{: .eyebrow}

## Voluntary, and nothing in return.

If Keycard Pal keeps your funds safe, you can send a coffee my way. Addresses are in
[DONATE.md](https://github.com/mmlado/keycard-pal/blob/main/DONATE.md) and on the app's About
screen. Donations are voluntary and nothing is unlocked, changed or promised in return.
{: .lede}

</div>
</section>
