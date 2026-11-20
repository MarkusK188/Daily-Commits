set -e
echo "Current Bash time: "
date

echo "Timestamp variable:"

DATE=$(date +"%Y-%m-%d")
TIMESTAMP=$(/usr/bin/date +"%Y-%m-%d %H:%M:%S %z")

echo "$TIMESTAMP"

cat >> README.md <<EOF

## Daily Update: $DATE

- Timestamp: $TIMESTAMP
- Automated daily commit.

EOF

git add README.md
git commit -m "Daily update: $DATE"
git push https://github.com/MarkusK188/Daily-Commits.git master

echo "Daily update succesfully pushed!"
