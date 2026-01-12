return {
  "f-person/git-blame.nvim",
  config = function()
    require("gitblame").setup({
      enabled = true,
      message_template = " <summary> • <date> • <author>",
      date_format = "%Y-%m-%d %H:%M",
      virtual_text_column = nil,
      highlight_group = "Comment",
      delay = 500,
    })
  end,
}

