data:extend({
    {
        type = "bool-setting",
        name = "yuoki-prod-mod-behaviour",
        setting_type = "startup",
        default_value = true,
        order = "a"
    },
    {
        type = "bool-setting",
        name = "yuoki-start-with-yi-suit",
        setting_type = "startup",
        default_value = false,
        order = "b"
    },
    {
        type = "int-setting",
        name = "yuoki-inventory-size",
        setting_type = "startup",
        minimum_value = 80,
        maximum_value = 150,
        default_value = 80,
        order = "c"
    },
    {
        type = "int-setting",
        name = "yuoki-player-reach",
        setting_type = "startup",
        minimum_value = 10,
        maximum_value = 32,
        default_value = 10,
        order = "d"
    }
})