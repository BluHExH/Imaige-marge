# 🛠️ Danger Stego Tool — by Hacker Hex

A professional-grade Termux tool for image-based file hiding using steganography.  
Ideal for ethical hackers, CTF players, and digital forensics learners.

---

## 🎯 What This Tool Does

**Danger Stego Tool** allows you to:

- 📥 Embed (hide) any file inside a cover image (like JPG)
- 📤 Extract hidden files from a stego image
- 🔐 Add optional password protection
- 💻 Use the tool entirely on **Termux**
- 🎨 Enjoy a clean, stylish banner with the word `HEX` in the center

---

## 🚀 Features

| Feature                 | Description                                     |
|------------------------|-------------------------------------------------|
| 🔍 Steganography       | Hide any file (txt, zip, apk...) inside a photo |
| 🔓 Secure Extraction   | Extract only with password (optional)           |
| 🐧 Termux Compatible    | Run directly from your Android terminal         |
| 🎨 Custom HEX Banner    | Unique branding for Hacker Hex tools            |
| 🔗 GitHub Ready        | With MIT License and open-source code           |

---

## 📦 Installation

```bash
pkg update -y
pkg install git -y
git clone https://github.com/dangerbyte/stego-tool
cd stego-tool
chmod +x danger-stego-tool.sh
bash danger-stego-tool.sh
