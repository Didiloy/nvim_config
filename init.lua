-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- set comments for vuejs
require("Comment").setup()
local ft = require("Comment.ft")
ft.set("javascript", { "//%s", "/*%s*/" })
ft.set("vue", { "//%s", "/*%s*/" })
