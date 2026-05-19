cd C:\Users\tomek

IF NOT EXIST Eurovision-Dashboard-Workflow\.git (
    git clone git@github.com:tomaszsulich/Eurovision-Dashboard-Workflow.git
)

cd Eurovision-Dashboard-Workflow

git branch --list feature-readme >nul
IF ERRORLEVEL 1 (
    git checkout -b feature-readme
) ELSE (
    git checkout feature-readme
)

echo ## Planned features > projekt.md
echo - Interactive filters by year and decade >> projekt.md
echo - Average normalized points analysis >> projekt.md
echo - Jury and televoting comparison >> projekt.md

git add .
git commit -m "docs: change project feature description"
git push