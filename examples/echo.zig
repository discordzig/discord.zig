const std = @import("std");
const discord = @import("discordzig");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const alloc = gpa.allocator();

    const token = std.process.getEnvVarOwned(alloc, "DISCORD_TOKEN") catch {
        std.log.err("DISCORD_TOKEN not set", .{});
        return error.MissingToken;
    };
    defer alloc.free(token);

    var client = try discord.Client.init(alloc, token, .{});
    defer client.deinit();

    try client.run();
}
