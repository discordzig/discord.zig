pub const Intent = packed struct(u64) {
    GUILDS: bool = true,
    GUILD_MESSAGES: bool = true,
    _: u62 = 0,
};
