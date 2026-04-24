#!/bin/bash
# Subset HanaMinA.ttf to only the Chinese characters used in HTML files
# Run this whenever you add new Chinese content to the site

FONT_IN="/home/chenhao/homepage/HanaMinA.full.ttf"
FONT_OUT="/home/chenhao/homepage/HanaMinA.ttf"
CHARS_OUT="/tmp/chars.txt"

# Collect all Chinese chars from HTML
python3 - << 'PYEOF'
import re, os
pages = [
    '/home/chenhao/homepage/index.html',
    '/home/chenhao/homepage/projects/index.html',
    '/home/chenhao/homepage/blog/index.html',
    '/home/chenhao/homepage/blog/luan.html',
    '/home/chenhao/homepage/blog/wu-jingzhi-zhuangzhang.html',
    '/home/chenhao/homepage/blog/wu-profanities.html',
    '/home/chenhao/homepage/blog/fu-etymology.html',
    '/home/chenhao/homepage/blog/tubo-etymology.html',
    '/home/chenhao/homepage/blog/gong-etymology.html',
    '/home/chenhao/homepage/life/index.html',
]
chars = set()
for path in pages:
    try:
        with open(path) as f:
            content = f.read()
        chars.update(re.findall(r'[一-鿿㐀-䶿]', content))
    except:
        pass
with open('/tmp/chars.txt', 'w', encoding='utf-8') as f:
    f.write(''.join(sorted(chars)))
print(f"Collected {len(chars)} unique Chinese characters")
PYEOF

# Subset
python3 -m fontTools.subset "$FONT_IN" \
  --text-file="$CHARS_OUT" \
  --output-file="$FONT_OUT" \
  --layout-closure

echo "Subset done: $(du -h $FONT_OUT)"
