Git Workflow for ENSF 400 Project
Branching Strategy
main → Stable production code
dev → Active development branch
feature/dev → Individual feature branches (e.g., feature/dev)

Collaboration Process
Create a feature branch: git checkout -b feature/<name>
Commit changes: git add . && git commit -m "Description"
Push to GitHub: git push origin feature/<name>
Submit a Pull Request (PR) to dev branch`
Code Review & Merge into dev
PR to main only after CI/CD tests pass