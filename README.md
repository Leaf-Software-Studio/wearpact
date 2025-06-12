# WearPact Workspace

This repository contains the main WearPact project structure with two independent submodules:

- **wearpact-client** - Frontend client application
- **wearpact-admin** - Admin dashboard application

Each submodule is an independent Git repository that can be developed separately while being coordinated through this parent repository.

## 🚀 Quick Start

### Option 1: Clone with all submodules (Recommended)

```bash
git clone --recursive git@leaf.github.com:Leaf-Software-Studio/wearpact.git
cd wearpact
```

This will automatically clone the main repository and all submodules in one command.

### Option 2: Clone step by step

1. **Clone the main repository:**
   ```bash
   git clone git@leaf.github.com:Leaf-Software-Studio/wearpact.git
   cd wearpact
   ```

2. **Initialize and update submodules:**
   ```bash
   git submodule init
   git submodule update
   ```

   Or in one command:
   ```bash
   git submodule update --init --recursive
   ```

## 📁 Repository Structure

```
wearpact-workspace/
├── README.md
├── .gitmodules                 # Submodule configuration
├── wearpact-client/           # Frontend submodule
│   └── (Next.js application)
└── wearpact-admin/            # Admin dashboard submodule
    └── (Admin application)
```

## 🔧 Development Workflow

### Working on Individual Projects

Each submodule can be developed independently:

```bash
# Work on the client
cd wearpact-client
git checkout main
git pull origin main
# Make your changes...
git add .
git commit -m "Your changes"
git push origin main

# Work on the admin
cd ../wearpact-admin
git checkout main
git pull origin main
# Make your changes...
git add .
git commit -m "Your changes"
git push origin main
```

### Updating Submodule References

After making changes in submodules, update the parent repository to track the new commits:

```bash
# From the root directory
cd /path/to/wearpact-workspace

# Add the updated submodule references
git add wearpact-client wearpact-admin
git commit -m "Update submodule references"
git push origin main
```

### Pulling Latest Changes

To get the latest changes from all repositories:

```bash
# Update the main repository
git pull origin main

# Update all submodules to their latest tracked commits
git submodule update --recursive

# Or to pull the latest from each submodule's main branch
git submodule update --remote
```

## 🔄 Common Commands

### Check Status of All Repositories
```bash
# Check main repo status
git status

# Check all submodules status
git submodule foreach git status
```

### Pull Latest from All Submodules
```bash
git submodule foreach git pull origin main
```

### Reset Submodules to Tracked Commits
```bash
git submodule update --init --recursive
```

## 📋 Repository URLs

- **Main Repository**: `git@leaf.github.com:Leaf-Software-Studio/wearpact.git`
- **Client Repository**: `git@leaf.github.com:Leaf-Software-Studio/wearpact-client.git`
- **Admin Repository**: `git@leaf.github.com:Leaf-Software-Studio/wearpact-admin.git`

## ⚠️ Important Notes

1. **SSH Access Required**: Make sure you have SSH access to all three repositories
2. **Submodule Commits**: The parent repository tracks specific commits from each submodule, not branches
3. **Independent Development**: Each submodule can be developed independently and has its own Git history
4. **Coordination**: Use the parent repository to coordinate specific versions of each submodule

## 🐛 Troubleshooting

### Submodules appear empty after clone
```bash
git submodule update --init --recursive
```

### Submodule is in detached HEAD state
```bash
cd wearpact-client  # or wearpact-admin
git checkout main
```

### Reset everything to clean state
```bash
git submodule deinit --all
git submodule update --init --recursive
```

### Update submodules to latest remote commits
```bash
git submodule update --remote --merge
```

## 📝 Additional Resources

- [Git Submodules Documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
- [Working with Submodules](https://github.blog/2016-02-01-working-with-submodules/)

## 🤝 Contributing

When contributing to this project:

1. Make changes in the appropriate submodule repository
2. Commit and push changes to the submodule
3. Update the parent repository to reference the new submodule commit
4. Create a pull request for the parent repository

This ensures that all changes are properly tracked and coordinated across the entire project structure.

