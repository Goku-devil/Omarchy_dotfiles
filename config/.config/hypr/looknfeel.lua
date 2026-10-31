-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in  = 0,
        gaps_out = 0,
        border_size = 2,
        resize_on_border = true,
        allow_tearing = false,
    },

    decoration = {
        rounding       = 1,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 0.97,
        blur = {
            enabled   = true,
            size      = 6,
            passes    = 3,
            new_optimizations = true,
            ignore_opacity = false,
            vibrancy  = 0.1696,
        },
    },
    animations = {
        enabled = true,
    },
})


