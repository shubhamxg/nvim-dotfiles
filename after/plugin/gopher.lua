require"gopher.dap".setup()

require("gopher").setup {
    commands = {
        go = "go",
        gomodifytags = "gomodifytags",
        gotests = "~/go/bin/gotests", -- also you can set custom command path
        impl = "impl",
        iferr = "iferr",

        ["<leader>gsj"] = {
            "<cmd> GoTagAdd json <CR>",
            "Add json struct tags"
        },
        ["<leader>gsy"] = {
            "<cmd> GoTagAdd yaml <CR>",
            "Add yaml struct tags"
        },
        ["<leader>gee"] = {
            "<cmd> GoIfErr <CR>",
            "Automate Error handeling"
        },
    },
}




