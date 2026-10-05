#!/bin/sh
# Builds the GitHub Pages copy (docs/index.html) from index.html, the page source
# that is also published as a Claude artifact.
cd "$(dirname "$0")"
{ cat site-head.html; cat index.html; printf '\n</body>\n</html>\n'; } > docs/index.html
echo "Built docs/index.html"
