# Chenhao Meng — Personal Homepage

Personal website for [Chenhao Meng](https://hashbrowns-fries.github.io), AI / NLP researcher at Shanghai Jiao Tong University.

## Stack

Pure HTML + CSS + vanilla JS, deployed on GitHub Pages. No build step.

## Structure

```
/
├── index.html          # Homepage
├── avatar.png         # Avatar image
├── life/
│   └── index.html     # Life / Notes page
├── blog/
│   ├── index.html     # Blog listing
│   ├── template.html  # Post template
│   ├── gong-etymology.html
│   ├── tubo-etymology.html
│   ├── fu-etymology.html
│   ├── luan.html
│   ├── wu-jingzhi-zhuangzhang.html
│   └── wu-profanities.html
└── projects/
    └── index.html     # Projects listing
```

## Development

No dependencies. Open `index.html` directly in a browser.

## Deployment

Push to `main`, GitHub Pages serves automatically.

```sh
git push
```

## Notes

- Fonts: Cormorant Garamond (display), Lora (body), DM Mono (mono) via Google Fonts
- Color palette: warm cream (#F9F7F2) with near-black text (#1C1C18)
- All pages share the same nav, footer, and CSS variables
