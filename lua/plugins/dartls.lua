-- Copy this file to your ~/.config/nvim/lua/plugins/
-- This file was written by @cddm. See https://www.reddit.com/r/neovim/comments/14c5e6o/how_to_set_up_dartflutter_with_neovim/jojf4z5/
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {},
      },
    },
  },
}
