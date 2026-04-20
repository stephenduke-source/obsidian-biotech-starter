# Obsidian Vault Template

A [Copier](https://copier.readthedocs.io/) template for scaffolding a structured Obsidian knowledge vault with a pre-built domain model for life sciences and operational workflows.

## What's included

### Scientific entities
- **Genes** — Ensembl ID, species, chromosome, transcripts, pathways, diseases
- **Transcripts** — Ensembl transcript ID, gene, proteins, tissues, canonical flag
- **Proteins** — UniProt ID, gene, transcripts, species, domains, pathways, diseases
- **Enzymes** — EC number, gene, transcripts, substrates, products, cofactors, inhibitors
- **Pathways** — KEGG ID, Reactome ID, genes, proteins, enzymes, diseases, drugs
- **Diseases** — OMIM ID, ICD code, genes, proteins, pathways, drugs
- **Drugs** — DrugBank ID, ChEMBL ID, SMILES, targets, indications, approval status
- **Experimental Models** — unified view across:
  - **Model Organisms** — taxonomy ID, common/scientific name, genes, diseases
  - **Cell Lines** — Cellosaurus ID, species, tissue, disease, culture type

### Operational entities
- **Meetings** — date, attendees, type, org
- **Jira Tickets** — URL, project, status, assignee, priority, sprint
- **Teams** — lead, members, domain, purpose
- **Roles** — responsibilities, accountabilities, domain
- **Workflows** — domains, tools, owners, users
- **Tools / Software / Equipment / Repositories** — unified view with type-based filtering
- **Projects** — type, year, status, URL
- **People** — birthday, org, meetings backlink
- **Companies** — URL, people

### Plugins included
- [DB Folder](https://github.com/RafaelGB/obsidian-db-folder) — powers the `.base` database views
- [Excalidraw](https://github.com/zsviczian/obsidian-excalidraw-plugin) — sketching and diagrams
- [Git](https://github.com/denolehov/obsidian-git) — version control from within Obsidian

## Prerequisites

- [Git](https://git-scm.com/)
- [Copier](https://copier.readthedocs.io/) — install with `pip install copier` or `uv tool install copier`

## Quick start

```bash
copier copy https://github.com/<your-org>/<this-repo>.git ~/my-vault
```

Then open `~/my-vault` in Obsidian. See `README.md` inside the vault for full setup instructions.

## Updating your vault

When new entity types or domain changes are released:

```bash
cd ~/my-vault
git status  # must be clean before updating
copier update
git add . && git commit -m "Update domain model to vX.Y.Z"
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
