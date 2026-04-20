# Vault

This vault is scaffolded from the [Obsidian Vault Template](https://github.com/<your-org>/<this-repo>). It includes a pre-built domain model for life sciences and operational workflows.

---

## Setup

### Option A: Starting from scratch (Obsidian not yet installed)

**1. Install Copier**

```bash
# Using pip
pip install copier

# Or using uv (recommended)
uv tool install copier
```

**2. Scaffold your vault**

```bash
copier copy https://github.com/<your-org>/<this-repo>.git ~/my-vault
```

**3. Set up version control for your vault**

```bash
cd ~/my-vault
git init
git add .
git commit -m "Initial vault from template"
```

Optionally push to a private remote:
```bash
git remote add origin <your-private-repo-url>
git push -u origin main
```

**4. Install Obsidian**

Download and install from [obsidian.md](https://obsidian.md).

**5. Open your vault**

- Launch Obsidian
- Click **Open folder as vault**
- Select the folder you scaffolded in step 2
- When prompted, click **Trust author and enable plugins**

---

### Option B: Already have Obsidian installed

**1. Install Copier**

```bash
# Using pip
pip install copier

# Or using uv (recommended)
uv tool install copier
```

**2. Scaffold your vault**

```bash
copier copy https://github.com/<your-org>/<this-repo>.git ~/my-vault
```

**3. Set up version control for your vault**

```bash
cd ~/my-vault
git init
git add .
git commit -m "Initial vault from template"
```

**4. Open your vault in Obsidian**

- In Obsidian, go to **Manage vaults** (bottom left)
- Click **Open folder as vault**
- Select the folder you scaffolded in step 2
- When prompted, click **Trust author and enable plugins**

---

## Updating your vault

When new entity types or domain changes are released, pull them into your vault:

```bash
cd ~/my-vault
git status        # working directory must be clean
copier update     # pulls latest changes from the template
git add .
git commit -m "Update domain model to vX.Y.Z"
```

> **Note:** `copier update` only modifies files that originated from the template. Your personal notes are never touched.

---

## Outstanding bases & templates to create

None — all entity types are implemented. See the [template repo](https://github.com/<your-org>/<this-repo>) for the full list.
