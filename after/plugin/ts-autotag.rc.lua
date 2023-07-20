local status, autotag = pcall(require, "nvim-ts-autotag")
if (not status) then return end
print("setup autotag")

autotag.setup({
    -- TODO: extend the actual list of filetypes
    autotag = {
        enable = true,
        filetypes = {"html", "htmldjango", "xml"}
    }
})
