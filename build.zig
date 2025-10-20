const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const lib = b.addStaticLibrary(.{
        .name = "discordzig",
        .root_source_file = .{ .path = "src/discordzig.zig" },
        .target = target,
        .optimize = optimize,
    });
    lib.install();

    const tests = b.addTest(.{
        .root_source_file = .{ .path = "src/discordzig.zig" },
        .target = target,
        .optimize = optimize,
    });
    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&tests.step);

    const build_examples = b.option(bool, "examples", "Build example binaries") orelse true;
    if (build_examples) {
        const exe = b.addExecutable(.{
            .name = "echo",
            .root_source_file = .{ .path = "examples/echo.zig" },
            .target = target,
            .optimize = optimize,
        });
        exe.root_module.addImport("discordzig", lib.root_module);
        b.installArtifact(exe);

        const run_step = b.step("run-echo", "Run echo example");
        const run_cmd = b.addRunArtifact(exe);
        run_step.dependOn(&run_cmd.step);
    }

    const fmt = b.addFmt(.{ .paths = &.{"src", "examples"} });
    const fmt_step = b.step("fmt", "Format Zig sources");
    fmt_step.dependOn(&fmt.step);
}
