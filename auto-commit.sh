nano auto-commit.sh
#!/bin/bash
cd "$HOME/automation_lab" || exit 1
./job.sh
git add job.sh job.log
git diff --cached --quiet || git commit -m "Automatic job update"
