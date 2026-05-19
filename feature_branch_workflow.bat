git clone git@github.com:tomaszsulich/Eurovision-Dashboard-Workflow.git
git checkout -b feature-readme

echo ## Planned features > projekt.md
echo - Interactive filters by year and decade >> projekt.md
echo - Average normalized points analysis >> projekt.md
echo - Jury and televoting comparison >> projekt.md

git commit -m "docs: expand project feature description"
git push