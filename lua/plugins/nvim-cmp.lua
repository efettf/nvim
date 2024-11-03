return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-path",
      "f3fora/cmp-spell",
      "ray-x/cmp-treesitter",
      "efettf/cmp-emoji.nvim",
    },
    config = function()
      require("cmp").setup({
        sources = require("cmp").config.sources({
          { name = "emoji", option = { insert = false } },
          { name = "path" },
          { name = "treesitter", keyword_length = 2 },
          { name = "spell", keyword_length = 4 },
        }),
        mapping = require("cmp").mapping.preset.insert({
          ['<down>'] = require('cmp').mapping.select_next_item(),
          ['<up>'] = require('cmp').mapping.select_prev_item(),
          ['<tab>'] = require('cmp').mapping.confirm({ select = true }),
        })
      })
    end
  },
}
