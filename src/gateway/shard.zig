const std = @import("std");
const Intent = @import("types.zig").Intent;

pub const Shard = struct {
    allocator: std.mem.Allocator,
    token: []const u8,
    intents: Intent,

    pub fn init(allocator: std.mem.Allocator, token: []const u8, intents: Intent) !Shard {
        return .{ .allocator = allocator, .token = token, .intents = intents };
    }

    pub fn deinit(self: *Shard) void { _ = self; }

    pub fn connect(self: *Shard) !void { _ = self; }

    pub fn loop(self: *Shard) !void { _ = self; }
};
