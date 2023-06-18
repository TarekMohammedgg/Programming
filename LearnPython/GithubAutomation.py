import git
# Set up the repository
repo = git.Repo('D:\obsidianVault')
repo.git.pull('origin', 'main')

# Make changes to the files in the repository

# Commit the changes
commit_message = 'Auto commit'
repo.git.add('.')
repo.git.commit('-m', commit_message)

# Push the changes
repo.git.push('origin', 'main')