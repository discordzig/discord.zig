<h1 align="center">Contributing to discord.zig</h1>

Thank you for your interest in contributing to **discord.zig**!  
This project is still in early development, and every idea, report, or contribution helps shape its foundation.

Please take a few minutes to read through this document before submitting changes.

---

### Code of Conduct

By participating in this project, you agree to uphold our [Code of Conduct](./CODE_OF_CONDUCT.md).  
Be respectful, constructive, and supportive this community values professionalism and collaboration.

---

### Ways to Contribute

You can contribute in several ways:

- **Reporting bugs** or inconsistencies via [Issues](https://github.com/discordzig/discord.zig/issues)
- **Suggesting features** or API improvements
- **Improving documentation**
- **Reviewing pull requests**
- **Contributing code** (core, extensions, tooling)

All forms of contribution are appreciated.

---

### Getting Started

1. **Fork** the repository.

2. **Clone** your fork locally
   ```bash
   git clone https://github.com/discordzig/discord.zig.git
   cd discord.zig
   ```

3. **Create** a new branch for your work
   ```bash
   git checkout -b feat/new-feature
   ```

4. **Make** your changes and ensure the code builds successfully
   ```bash
   zig build
   ```

5. **Commit** your changes using Conventional Commits
   ```bash
   feat: add gateway heartbeat handler
   fix: correct memory leak in rest client
   docs: improve README formatting
   ```

6. **Push** your branch and open a Pull Request (PR) against the `main` branch.

---

### Pull Request Guidelines

- Keep PRs focused one feature or fix per PR.  
- Follow existing code style and naming conventions.  
- Include documentation or comments for public APIs.  
- Link related issues if applicable.  
- Ensure CI passes before requesting review.  
- Maintainers will review your PR and may request small adjustments before merging.

---

### Development Notes

- Requires **Zig 0.13.0** or newer.
  
- All code must be formatted with
  ```bash
  zig fmt .
  ```
  
- Avoid unnecessary memory allocations follow Zig’s allocator principles.
   
- Tests (once available) must pass before merge.

---

### Communication

If you have design ideas, questions, or suggestions, please open a **Discussion** or **Issue** on GitHub.  
A community Discord will be available once the first public milestone is reached.
