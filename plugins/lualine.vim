lua << END
require('lualine').setup({
	sections = {
		lualine_c = {
			{"filename", path=1}
		}
	}
})
END
