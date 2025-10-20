const std = @import("std");
const Http = @import("rest/http.zig").Http;
const Intent = @import("gateway/types.zig").Intent;
const Shard = @import("gateway/shard.zig").Shard;

pub const Client = struct {
    allocator: std.mem.Allocator,
    token: []const u8,
    http: Http,
    shard: Shard,

    pub fn init(allocator: std.mem.Allocator, token: []const u8, intents: Intent) !Client {
        var http = try Http.init(allocator, token);
        var shard = try Shard.init(allocator, token, intents);
        return .{ .allocator = allocator, .token = token, .http = http, .shard = shard };
    }

    pub fn deinit(self: *Client) void {
        self.shard.deinit();
        self.http.deinit();
    }

    pub fn run(self: *Client) !void {
        try self.shard.connect();
        try self.shard.loop();
    }
};
