# Utah Versatility Ranch Horse Association Website

This repository contains the source content and Hugo project for the Utah Versatility Ranch Horse Association (UVRHA) website. You can edit content in this workspace and use the built-in development container to preview changes live.

## Getting Started in Codespaces

1. Open the repository in GitHub Codespaces.
2. Start the preview server by running the **Start Server** task:
   - Press **⌥⌘H** (Mac) or **Ctrl+Alt+H** (Windows/Linux), or
   - Open **Terminal → Run Task…** and choose **Start Server**.
3. When prompted (or by opening the forwarded port labeled "Hugo Preview"), view the live site preview in your browser.
4. Edit content files inside the `content/` directory. Most pages are Markdown (`.md`) files.
5. Save changes and watch the preview reload automatically. If the preview stops responding, rerun the **Start Server** task. Changes are not public until merged/deployed.

## Saving and Committing Changes

You have two easy options when you want to store your edits in git:

### Option A – Quick Commit Task (recommended)

1. Press **⇧⌘B** (Mac) or **Ctrl+Shift+B** (Windows/Linux), or open **Terminal → Run Task…**.
2. Choose **Commit Content Changes**.
3. The task stages every modified file and creates a commit named `Content update: <date>`.
4. If there are no edits to commit, the task lets you know—simply save the files you changed and run it again.

### Option B – Source Control View

1. Open the **Source Control** panel (sidebar icon with the git branch).
2. Review the list of changed files and click each one to inspect differences.
3. When you are ready, type a short description in the message box.
4. Click the **Commit** button (✓). The Codespace already has the name and email configured for you.

## Markdown Basics

Markdown is a simple way to format text. Here are a few essentials:

- `# Heading` creates a large heading. Add more `#` symbols for smaller headings.
- Leave a blank line between paragraphs.
- Use `-` or `*` for bullet lists.
- Surround text with `**double asterisks**` for bold, `_underscores_` for italics.
- Add links with `[Link text](https://example.com)`.

For a handy reference, see the [Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet/).

## Hugo Content Tips

- Keep new content inside the `content/` folder. Organize pages in subfolders to mirror the site structure.
- Front matter (the section at the top of each file between `---` or `+++`) controls page settings such as title, date, and menu placement.
- You can insert images by placing files in the `static/` folder and referencing them with `/images/your-file.jpg`.
- Menu items can be added or removed by editing `config/_default/menus.toml`. Ask for help if you are having trouble

Learn more from the official Hugo documentation: [Content Management in Hugo](https://gohugo.io/content-management/).

## Need Help?

- Rerun the **Start Server** task if the preview pane cannot connect.
- Check the `.devcontainer/logs/hugo-server.log` file if the preview stops working (`tail -f .devcontainer/logs/hugo-server.log`).
- Reach out to a teammate if you run into issues or need guidance on publishing changes.
