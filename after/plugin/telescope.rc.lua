local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:g')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions


telescope.setup {
    defaults = {
        mappings = {
            n = {
                ['q'] = actions.close
            }
        }
    },
    extensions = {
        file_browser = {
            theme = 'dropdown',
            mappings = {
                ["i"] = {
                    ["<C-w>"] = function() vim.cmd('normal vbd') end,
                },
                ["n"] = {
                    -- your custom normal mode mappings
                    ["N"] = fb_actions.create,
                    ["h"] = fb_actions.goto_parent_dir,
                    ["/"] = function()
                        vim.cmd('startinsert')
                    end
                }
            }
        }
    }
}

telescope.load_extension("file_browser")
