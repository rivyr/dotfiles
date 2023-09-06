  local cmp = require('cmp')
  cmp.setup({
	  mapping = {
		  ["<CR>"] = cmp.mapping.confirm({select = true}),
		  ["<s-tab>"] = cmp.mapping.select_prev_item(),
		  ["<C-k>"] = cmp.mapping.select_prev_item(),
		  ["<tab>"] = cmp.mapping.select_next_item(),
		  ["<C-j>"] = cmp.mapping.select_next_item(),
    }
  })



