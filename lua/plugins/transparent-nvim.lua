return {
    "xiyaowong/transparent.nvim",
    lazy = false, -- Ensures the plugin loads immediately
    config = function()
        require("transparent").setup({
            groups = { -- Default highlight groups
                "Normal",
                "NormalNC",
                "Comment",
                "Constant",
                "Special",
                "Identifier",
                "Statement",
                "PreProc",
                "Type",
                "Underlined",
                "Todo",
                "String",
                "Function",
                "Conditional",
                "Repeat",
                "Operator",
                "Structure",
                "LineNr",
                "NonText",
                "SignColumn",
                "CursorLine",
                "CursorLineNr",
                "StatusLine",
                "StatusLineNC",
                "EndOfBuffer",
            },
            extra_groups = { -- Additional highlight groups for transparency
                "FernNormal",  -- Ensures Fern's background is transparent
                "FernCursorColumn",
                "FernRootSymbol",
                "FernLeafSymbol",
                "FernBranchSymbol",
                "NormalFloat",
           },
            exclude_groups = {}, -- Groups to exclude from clearing
        })
    end,
}

