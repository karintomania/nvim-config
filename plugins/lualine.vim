lua << END
require('lualine').setup({
	sections = {
        lualine_b = {'diagnostics'},
		lualine_c = {
			{"filename", path=3} -- show relative path
		},
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {}
	},
  inactive_sections = {
    lualine_c = {
        {'filename', path=3},
    },
    lualine_x = {}
  },
})
END
