cd C:\Users\tomek

:: Clone repository (run only once)
IF NOT EXIST Eurovision-Dashboard-Workflow (
    git clone git@github.com:tomaszsulich/Eurovision-Dashboard-Workflow.git
)

cd Eurovision-Dashboard-Workflow

git add .
git commit -m "docs: update workflow script"

:: Create feature branch (skip if branch already exists)
git checkout feature-readme

echo ## Planned features > projekt.md
echo - Interactive filters by year and decade >> projekt.md
echo - Average normalized points analysis >> projekt.md
echo - Jury and televoting comparison >> projekt.md

git commit -m "docs: expand project feature description"
git push