local M = {};
local function buildCommand (path, testName)
	local command = "php vendor/bin/phpunit " .. path
	-- add test name filter
	if testName ~= nil and testName ~= '' then
		 command = command .. " --filter " .. testName
	end

	return command
end

local function generate()
	local path = vim.fn.expand('%')
	local testCommand = buildCommand(path)
	vim.fn.setreg('*', testCommand)
	print("The test command is copied:" .. testCommand)
end

local function generateWithFilter()
	local path = vim.fn.expand('%')
	local testName = vim.fn.expand('<cword>')
	local testCommand = buildCommand(path, testName)
	vim.fn.setreg('*', testCommand)
	print("The test command is copied:" .. testCommand)
end

M.generate = generate
M.generateWithFilter = generateWithFilter

return M


