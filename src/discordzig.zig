pub const Client = @import("client.zig").Client;

pub const rest = struct {
    pub const Http = @import("rest/http.zig").Http;
};

pub const gateway = struct {
    pub const Intent = @import("gateway/types.zig").Intent;
    pub const Shard = @import("gateway/shard.zig").Shard;
};

pub const models = struct {
    pub const User = @import("models/user.zig").User;
};
