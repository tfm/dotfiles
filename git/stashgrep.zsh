stashgrep() {
  for i in `git stash list --format="%gd" `; do
    git stash show -p $i | grep -H --label="$i" "$1"
  done
}
