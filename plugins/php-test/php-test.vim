if exists("g:loaded_php_test")
    finish
endif
let g:loaded_php_test = 1

lua << EOF

local loc =  vim.fn.expand("<sfile>:h:p") .. "/?.lua"
package.path = package.path .. ";" .. loc
-- lua print(package.path)

EOF
command! -nargs=0 GenTest lua require("php-test").generate()
command! -nargs=0 GenTestF lua require("php-test").generateWithFilter()
