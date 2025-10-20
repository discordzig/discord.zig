const std = @import("std");

pub const User = struct {
    id: u64,
    username: []const u8,
    discriminator: ?[]const u8 = null,
    bot: bool = false,

    pub fn format(self: User, w: anytype) !void {
        try w.print("User({d}, {s})", .{ self.id, self.username });
    }
};
