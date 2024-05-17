
```
# Remove the ref folder from all history
git-filter-repo --path ref/ --invert-paths
# Reset Upstream & Push
git push --set-upstream origin main --force
# Make sure users clone a the repository or 
git reset --hard origin/main
```