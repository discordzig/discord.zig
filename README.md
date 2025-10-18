<p align="center">
  <img src="https://i.imgur.com/68j5wm5.png" alt="discord.zig banner" width="80%">
</p>

<p align="center">
  <strong>A modern Discord API library for the Zig programming language</strong><br>
  High-performance, type-safe, and built entirely from scratch.
</p>

<p align="center">
  <a href="https://github.com/discordzig/discord.zig/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/discordzig/discord.zig/ci.yml?label=build&logo=github&style=for-the-badge">
  </a>
  <a href="./LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge">
  </a>
  <a href="#">
    <img src="https://img.shields.io/badge/Zig-0.13%2B-orange?style=for-the-badge&logo=zig">
  </a>
  <a href="https://github.com/discordzig/discord.zig/stargazers">
    <img src="https://img.shields.io/github/stars/discordzig/discord.zig?style=for-the-badge&color=yellow">
  </a>
</p>

---

### Overview

`discord.zig` is an **independent and modern implementation** of the Discord API, written entirely in Zig.  
It aims to provide developers with a **fast**, **predictable**, and **type-safe** experience for interacting with Discord’s REST and Gateway systems with zero garbage collection.

The library is currently in **early development**.  
Core modules such as Gateway, REST, and Models are still being designed and implemented.

---

### Vision

The purpose of `discord.zig` is to bring **clarity**, **control**, and **performance** to the world of Discord development.  
Instead of relying on dynamic, high-level abstractions, the project takes advantage of Zig’s strengths:

- **Performance-first design** with no hidden allocations  
- **Explicit allocator control**, giving developers full control over memory usage 
- **Compile-time safety** through Zig’s type system  
- **Cross-platform capability** for Linux, Windows, and macOS  

---

### Planned Features

- Complete Discord **Gateway** and **REST** coverage  
- Typed **models** generated from Discord’s official API schema  
- Rate-limit safe **HTTP client**  
- Configurable **caching layer** (none / partial / full)  
- Structured **event dispatching system**  
- Optional **extension framework** for commands, context, and UI components  

---

### Installation

```bash
git clone https://github.com/discordzig/discord.zig
cd discord.zig

# build (once core implementation is available)
zig build
```

---

### Contributing

Contributions are welcome.  
As this project is in its early stages, discussions and design proposals are encouraged before submitting code.

Please read the contribution guidelines and the code of conduct before opening a pull request:

- [CONTRIBUTING.md](./CONTRIBUTING.md)
- [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md)
- [SECURITY.md](./SECURITY.md)

All commits should follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) format (`feat:`, `fix:`, `refactor:`, etc.).

---

### License

This project is licensed under the [MIT License](./LICENSE).  
© 2025 discordzig — All rights reserved.
