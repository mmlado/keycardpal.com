---
layout: page
title: Workshop station guide
description: Step by step guide for a workshop station. Initialize a Keycard, load the station key, connect a watch-only wallet and sign a transaction across the air gap.
permalink: /workshop/
---

Hands-on workshop
{: .eyebrow}

# Sign your first air-gapped transaction

This is the long version of the six steps printed on the back of your station card, with a
few extras. Follow it top to bottom. Each step says what to press, what you should see, and what
just happened.
{: .lede}

> **Every key in this room is a throwaway.** The recovery phrase on your card was printed in
> public and handed to a room. Use it here and nowhere else. The address on your card already
> holds a small balance of ETH on Base, enough for the exercise, so you do not need to bring or
> send any funds of your own.

## What a station is

A station is two halves that never touch each other over a network.

- **The signer.** A phone running Keycard Pal, plus a Keycard. This half stays offline.
- **The wallet.** A laptop running a watch-only wallet. This guide uses Ambire. It builds
  transactions and broadcasts them, but it holds no key.

Your station card is the third piece. The front carries the station label (A1, B7 and so on),
twelve words, a QR code of those same words, and the station address on the line underneath.
The four characters in the middle of the code are the last four of that address.

## Before you start

- Keycard Pal 1.13 or newer on the phone. Older versions cannot scan the code on the card.
  [Install links are here](/#install).
- NFC switched on.
- [Ambire](https://www.ambire.com) open on the laptop, set to the **Base** network.
- No funds of your own. The station address is already funded.
- A blank Keycard. If yours has been used before, see
  [the card will not initialize](#the-card-will-not-initialize).

## 1. Initialize the card

On the phone, open **Keycard**, then **Initialize**.

1. Create a 6 digit PIN and enter it a second time to confirm. It only has to last for your
   turn. The next person resets the card and picks their own.
2. The app asks **Add a duress PIN?** Choose **Yes, add duress PIN**. Create a second,
   different 6 digit PIN and confirm it. Step 7 shows what it is for.
3. Hold the card flat against the back of the phone and keep it still until the app says
   **Card initialized**. On most Android phones the NFC antenna sits in the middle of the
   back. On an iPhone it is at the top edge.

**What just happened.** The card now has two PINs and is ready to hold a key. It has no key
yet.

## 2. Load the station key

Open **Keycard**, then **Key pair**, then **Import recovery phrase**.

1. Tap the QR icon inside the word box. The scanner opens.
2. Scan the code on the front of your station card. The twelve words fill in by themselves.
3. Leave the passphrase empty.
4. Tap **Continue**, enter your PIN, and hold the card to the phone.

If the scanner refuses the code, type the twelve words from the card instead. They are the
same key.

**What just happened.** The phone turned the words into a key and loaded it onto the card.
From here on, nothing in the app asks the card for that key back. In real use you would let
the card make its own words with **Generate key pair**, so the phrase never comes from
anywhere else. We import here only so that every station starts with a funded address.

## 3. Connect the laptop wallet

On the phone, open **Connect software wallet** and pick **Ethereum**. Enter your PIN and tap
the card. The phone now shows a QR code.

On the laptop, in Ambire:

1. Add an account and choose the QR wallet option. Ambire calls it **Connect QR wallet**.
2. Show the phone's QR code to the laptop camera.
3. Select the first account and confirm.
4. Check the address Ambire shows against the address printed on your station card. They have
   to match.

**What just happened.** The QR code carried a public key and nothing else. The laptop can now
see the station's balance and prepare transactions. It still cannot sign anything.

## 4. Build a transaction on the laptop

Anything Ambire can build, the card can sign. Pick one of these, or try them all:

- **Send to a neighbour.** Ask a neighbouring station for their address. It is printed on
  their card.
- **Send to yourself.** Repeat step 3 and select a second account as well. Then move funds
  between your two addresses.
- **Swap a little ETH for USDC.** Use the swap inside Ambire. On Base the fee is a fraction
  of a cent. The review screen for a swap will not read as neatly as a plain transfer. Look at
  what it does and does not tell you.

Keep the amounts small so there is enough left for another round. When you confirm, Ambire
shows an animated QR code instead of sending anything. The code keeps changing. That is how
it is meant to work: the request is too big for one picture, so it is split into parts that
play in a loop.

## 5. Scan it, read it, sign it

On the phone, tap **Scan** at the bottom of the home screen and point the camera at the
laptop.

1. Keep the whole code in frame and hold still. The scanner collects the parts until it has
   enough.
2. Read the **Review transaction** screen. Check where the funds go, the amount and the fee,
   and that the chain is Base. For a transfer to a neighbour, compare the recipient with the
   address on their card.
3. If it is all what you meant to send, tap **Sign transaction**, enter your PIN, and hold
   the card to the phone.

**This screen is the point of the whole exercise.** The laptop is online, so assume it could
be lying to you. The phone shows what the card is actually about to sign. If the two disagree,
do not sign.

## 6. Show the signature back

The phone now shows a second QR code. That is the signature.

1. In Ambire, continue to the scan step and show it the phone.
2. Ambire attaches the signature and broadcasts the transaction.
3. Tap **Done** on the phone.

Check the result in Ambire, or look the address up on [basescan.org](https://basescan.org).
There are more things to scan at the bottom of this page:
[example codes](#example-codes-to-scan) for requests you did not build yourself.

**What just happened.** Two pictures crossed the gap: a request going one way and a signature
coming back. The key never left the card, and the phone never touched a network.

## 7. Try the duress PIN

A duress PIN is for the day someone forces you to unlock your wallet. It opens the card just
like the real PIN does, but onto a decoy account.

1. On the phone, open **Addresses**, then **Ethereum**. Enter your real PIN and tap the card.
   The first address is the one printed on your station card.
2. Go back and open **Addresses**, then **Ethereum** again. This time enter the duress PIN and
   tap the card.

The list is different. None of these addresses is on your station card, and none of them
holds the station's balance.

**What just happened.** The card accepted both PINs and behaved the same way each time.
Nothing on the screen says which account is the decoy. Someone watching over your shoulder
sees a working wallet, just not the real one.

## If your station has more than one card

Only one card per station holds the funded station key. Use the others to see how a card
makes a key of its own, then pass funds back and forth between the two.

### Let the card make the words

Take a blank card and run [step 1](#1-initialize-the-card) on it. Then open **Keycard**, then
**Key pair**, then **Generate key pair**, and pick **12 word**.

1. Hold the card to the phone. The card rolls the randomness for the words. No PIN is asked
   for yet.
2. Tap **Reveal recovery phrase**. The words appear and a 30 second timer starts. Write them
   down on paper. The button stays locked until the timer runs out, so nobody skips this.
3. Tap **I've written it down**. On **Check your backup** the app asks you for some of the
   words. Three wrong answers send you back to the list.
4. Enter your PIN and hold the card to the phone. The app says **Key pair has been added to
   Keycard**.

**What just happened.** This is the moment the workshop title is about. The words came from
the card's own randomness and were shown once, so you could write them down. The key made
from them now sits on the card, and the app never shows the words again. Nobody printed this
phrase and nobody else in the room has seen it.

### Send funds across and back

1. Connect the new card to Ambire as in [step 3](#3-connect-the-laptop-wallet). It shows up
   as a second account, with a new address and no balance.
2. With the station card, run steps 4 to 6 and send a small amount to the new address.
3. Switch to the new account in Ambire and send it back to the station address. This time
   the new card signs, so use that card and its PIN.

Send the funds back before you finish, so the next person finds the balance on the station
address.

## When something goes wrong

### The tap stops halfway

Hold the card still against the phone and wait. Reads retry by themselves. A write stops and
tells you so, and you can simply try again.

### The code never completes

Keep the whole code in frame, stop moving, and turn the laptop screen brightness up. Parts
you missed come round again. Do not restart the scan.

### Wrong PIN

You get three tries. After the third wrong PIN the card is blocked, and Keycard Pal cannot
unblock it. Run **Keycard**, then **Factory reset**, and start again from step 1. That costs
nothing with a workshop key. With your own card it would cost you the key, which is why it is
worth seeing here first.

### The card will not initialize

A card that is not blank refuses to initialize. Run **Keycard**, then **Factory reset**, and
try step 1 again.

### No free pairing slots

Older cards remember up to ten phones. If yours is full, open **Keycard**, then **Manage
pairing slots**, and free one.

### The scanner refuses the code on the card

The phone is running a version older than 1.13. Update the app, or type the twelve words.

## When you are done

- Run **Keycard**, then **Factory reset**, before you hand the card on. The next person
  starts with a blank card and sets their own PINs.
- Treat the phrase on your station card as spent. Anyone in the room could have copied it.
- Keycard Pal is free and open source. The app, the source and both builds are at
  [keycardpal.com](/).

## Flash a card yourself

This part is optional. A Keycard is a small computer, and the program on it is called the
applet. On a development card you can replace the applet yourself, for example to move a card
from version 3 to version 4. You need a laptop, a USB smart card reader and a development
card.

> **Development cards only, and it erases the card.** A development card accepts the key used
> below. A card bought in a shop does not. Every rejected login counts toward a limit, and
> past that limit the card can never be flashed again. If the first command is refused, stop.
> Do not try it again on that card. Flashing also deletes the PIN and any key on the card.

### The quick way

One script does everything. Put the card in the reader and run:

```sh
git clone https://github.com/mmlado/keycard-flasher
cd keycard-flasher
./flash.sh
```

It downloads what it needs, puts Keycard 4.0 on the card, and removes everything from the
laptop again. The [README](https://github.com/mmlado/keycard-flasher#readme) has the full
instructions: Linux setup, flashing several cards in a row, and building the applet from
source. Read it before you start. The script is tested on macOS. On Linux it is not tested
yet.

### By hand

The script runs a handful of commands for you. Running them yourself shows what flashing a
card involves. You need Java 17 or newer (`java -version` tells you which one you have) and
the `keycard-flasher` folder from the quick way.

**1. Get the tool.** GlobalPlatformPro is the program that talks to the card's manager, the
part of the card that installs and removes applets. `KEY` is the manager key of Keycard
development cards.

```sh
cd keycard-flasher
curl -LO https://github.com/martinpaljak/GlobalPlatformPro/releases/download/v25.10.20/gp.jar
KEY=c212e073ff8b4bbfaff4de8ab655221f
```

**2. List what is on the card.**

```sh
java -jar gp.jar --key $KEY -l
```

Lines that start with `PKG` are programs loaded on the card. Lines that start with `APP` are
running copies of them. The Keycard applet is the package `A0000008040001`.

**3. Tell version 3 from version 4.** Look at the `Version` line under that package:

```
PKG: A0000008040001 (LOADED)
     Version:  3.2
```

A version 4 card shows `4.0` there. It also has a second package, `A0000008040002`, a math
library that version 4 needs and version 3 does not have.

**4. Delete the old applet.** The `-f` removes the running copies together with the package.

```sh
java -jar gp.jar --key $KEY --delete A0000008040001 -f
```

If the card had version 4, delete the math library too. It has to go second, because the
applet depends on it.

```sh
java -jar gp.jar --key $KEY --delete A0000008040002
```

**5. Get version 4 from GitHub.** An applet ships as a CAP file. The applet comes from the
Keycard release page, the math library from the same project's source.

```sh
curl -LO https://github.com/keycard-tech/status-keycard/releases/download/4.0/keycard_v4.0.cap
curl -LO https://raw.githubusercontent.com/keycard-tech/status-keycard/4.0/keycard-math/im/status/keycard/math/javacard/math.cap
```

**6. Put it on the card.** The first two commands load the programs, math library first. The
other four start the running copies: the Keycard applet itself, then its NDEF, Cash and Ident
companions.

```sh
java -jar gp.jar --key $KEY --load math.cap
java -jar gp.jar --key $KEY --load keycard_v4.0.cap
java -jar gp.jar --key $KEY --package A0000008040001 --applet A000000804000101 --create A00000080400010101
java -jar gp.jar --key $KEY --package A0000008040001 --applet A000000804000102 --create D2760000850101
java -jar gp.jar --key $KEY --package A0000008040001 --applet A000000804000103 --create A00000080400010301
java -jar gp.jar --key $KEY --package A0000008040001 --applet A000000804000104 --create A00000080400010401
```

**7. Write the certificate.** Version 4 refuses every command until the card holds an
identity certificate. `KeycardTool.java` in the `keycard-flasher` folder makes a fresh
identity key for the card, signs it with a test key, and stores both on the card.

```sh
java -cp gp.jar KeycardTool.java load-ident
```

It prints the card's new identity public key. The certificate can be written only once. To
change it you delete the applet and start again from step 4.

**8. Check that it works.**

```sh
java -jar gp.jar --key $KEY -l
java -cp gp.jar KeycardTool.java status
```

The list now shows `Version:  4.0`. The second command prints `uninitialized`, which means
the applet answers and is waiting for a PIN. If it prints `no-certificate`, step 7 did not
run.

Now take the card to the phone and start from [step 1](#1-initialize-the-card). Keycard Pal
shows **Unverified Keycard** on the first tap. That is expected: the certificate was signed
with a test key that anyone can use, so it proves nothing. Tap **Proceed Anyway** for a card
you flashed yourself. The app remembers the card after that. Never accept that warning on a
card you bought.

**What just happened.** You replaced the program on the card and gave the card an identity.
A card from the factory gets its certificate from Keycard's own key, which is why Keycard Pal
trusts those without asking.

When you are done, remove the downloaded files:

```sh
rm gp.jar keycard_v4.0.cap math.cap
```

## Example codes to scan

These are requests a wallet could send you. Tap **Scan** on the phone, point it at a code, and
read the review screen. That is the whole exercise: see what each kind of request looks like
before anyone asks you to approve one.

Do not sign them. They were made for a public test key that no card in this room holds, and
the Ethereum ones are for Ethereum Mainnet, where the stations have no funds.

### Send ETH

eth-sign-request, EIP-1559 transaction
{: .eyebrow}

![QR code of a request to send ETH](/assets/workshop/eth-transfer.svg){: .qr}

The plainest request there is. You should see **EIP-1559 Transaction**, the recipient under
**To**, the chain, an amount of 0.001 ETH, and the fee rows.

### Send a token

eth-sign-request, EIP-1559 transaction with an ERC-20 transfer inside
{: .eyebrow}

![QR code of a request to send USDC](/assets/workshop/usdc-transfer.svg){: .qr}

A token transfer is a call to the token's contract, so the transaction itself goes to the
contract and carries no ETH. The app decodes the call for you: an ERC-20 transfer of 25 USDC,
and who receives it.

### A permit

eth-sign-request, EIP-712 typed data, animated
{: .eyebrow}

![Animated QR code of a permit request](/assets/workshop/permit.svg){: .qr}

This one is not a transaction. It is a signed permission, and nothing appears on chain when
you sign it. Read the spender, the allowance and the deadline. An unlimited allowance with a
deadline years away lets the spender take that token whenever it likes.

The request is too big for one picture, so the code plays as a loop of five parts, the same
way a wallet shows it. Hold the phone still until the scan completes.

### A Bitcoin transaction

crypto-psbt, partially signed Bitcoin transaction
{: .eyebrow}

![QR code of a Bitcoin transaction](/assets/workshop/bitcoin-psbt.svg){: .qr}

You should see one row per output: 200,000 sats going to the recipient, and 48,500 sats that
the request marks as change coming back to the sender.

### A Bitcoin message

btc-sign-request, message
{: .eyebrow}

![QR code of a Bitcoin message to sign](/assets/workshop/bitcoin-message.svg){: .qr}

A message, not a payment. The text you are asked to sign is on the screen, in words you can
read.

### An Ethereum message

eth-sign-request, personal message
{: .eyebrow}

![QR code of an Ethereum message to sign](/assets/workshop/eth-message.svg){: .qr}

The same idea on Ethereum, and an honest gap. The message says "Sign in to example.com", but
the app shows it as raw bytes today. If you cannot read it, you cannot check it.
