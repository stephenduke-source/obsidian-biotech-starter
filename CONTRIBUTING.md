# Contributing

This repo is a [Copier](https://copier.readthedocs.io/) template for an Obsidian knowledge vault. Contributions to the domain model (new entity types, improved templates, base fixes) are welcome.

## What lives here

All vault files live inside the `template/` subdirectory. The repo root contains only:
- `copier.yaml` — Copier configuration
- `Makefile` — developer tooling
- `README.md` — this template's documentation
- `CONTRIBUTING.md` — this file

## Adding a new entity type

Each entity type requires three files inside `template/`:

1. **Template** — `template/Templates/<Entity> Template.md`
   - YAML frontmatter with `categories: ["[[<Entity>]]"]` and relevant fields
   - Fields should be arrays (`[]`) for multi-value properties, or blank for single values

2. **Base** — `template/Templates/Bases/<Entity>.base`
   - Filters on `categories.contains(link("<Entity>"))` and `file.folder != "Templates"`
   - Defines `properties` with `displayName` for each field
   - Defines at least one `table` view with a sensible column `order`

3. **Category page** — `template/<Entity>.md`
   - YAML frontmatter with `tags: [<kebab-case-entity-name>]`
   - Body: `![[<Entity>.base]]`

### Example

See `template/Genes.md`, `template/Templates/Gene Template.md`, and `template/Templates/Bases/Genes.base` as a reference implementation.

## Commit conventions

```
[feature] Create base, template & category page for <entity>
[refactor] <description>
[fix] <description>
[docs] <description>
```

## Testing your changes

Scaffold a test vault to verify your changes work in Obsidian:

```bash
make copy DEST=/tmp/test-vault
# Open /tmp/test-vault in Obsidian and verify the new entity type appears correctly
```

Clean up after testing:
```bash
rm -rf /tmp/test-vault
```

## Releasing

When changes are ready to ship:

```bash
make tag VERSION=vX.Y.Z
```

This tags the current commit and pushes the tag. Users can then run `copier update` in their vaults to receive the changes.

## Pull requests

1. Fork the repo
2. Create a branch: `git checkout -b feature/my-entity`
3. Make changes following the patterns above
4. Test with `make copy DEST=/tmp/test-vault`
5. Commit with the convention above
6. Open a PR with a description of what entity type was added and why
