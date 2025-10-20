const std = @import("std");

pub const Http = struct {
    allocator: std.mem.Allocator,
    token: []const u8,
    client: std.http.Client,

    pub fn init(allocator: std.mem.Allocator, token: []const u8) !Http {
        return .{ .allocator = allocator, .token = token, .client = .{} };
    }

    pub fn deinit(self: *Http) void {
        self.client.deinit();
    }

    pub fn get(self: *Http, path: []const u8, out: *std.ArrayList(u8)) !void {
        var arena = std.heap.ArenaAllocator.init(self.allocator);
        defer arena.deinit();
        const a = arena.allocator();

        var uri = try std.fmt.allocPrint(a, "https://discord.com/api/v10{s}", .{path});
        var req = try self.client.request(.GET, try std.Uri.parse(uri), .{}, .{});
        defer req.deinit();

        try req.headers.append("Authorization", try std.fmt.allocPrint(a, "Bot {s}", .{self.token}));
        try req.start();
        try req.finish();

        const res = try req.reader().readAllAlloc(self.allocator, 1 << 20);
        defer self.allocator.free(res);
        try out.appendSlice(res);
    }
};
