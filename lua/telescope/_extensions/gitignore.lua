local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local function checkIgnoreLocal()
    local gitignoreDir = os.getenv('HOME') .. '/.vim'
    local checkIgnoreFile = 'gitignore/Python.gitignore'
    local checkFilePath = gitignoreDir .. "/" .. checkIgnoreFile
    local checkFile = io.open(checkFilePath)
    if checkFile == nil then
        os.execute("git clone https://github.com/github/gitignore.git" .. " " ..
                       gitignoreDir)
    end
end

local function createGitignore(filePath)
    print(filePath)
    local cmd = '/bin/cp -f ' .. filePath .. ' ' .. '.gitignore'
    print(cmd)
    os.execute(cmd)
    vim.cmd('e .gitignore')
end

local function addToGitignore(filePath)
    print(filePath)
    local cmd = 'cat ' .. filePath .. ' >> ' .. '.gitignore'
    print(cmd)
    os.execute(cmd)
    vim.cmd('e .gitignore')
end

local function action_choices(prompt_bufnr)
    actions.close(prompt_bufnr)
    local selection = action_state.get_selected_entry()
    local type = vim.fn.input('What kind of merge ([a]ppend / [r]place : ')
    if type == "append" or type == 'a' then
        addToGitignore(selection.path)
    elseif type == "replace" or type == 'r' then
        createGitignore(selection.path)
    end
end

local file_gitignore = function()

    checkIgnoreLocal()
    require('telescope.builtin').find_files {
        prompt_title = ' telescope gitignoreLocal',
        shorten_path = false,
        cwd = '~/.vim/gitignore',
        width = .25,
        layout_strategy = 'horizontal',
        layout_config = {preview_width = 0.65},
        attach_mappings = function(_, map)
            -- map('i', '<c-e>', addToGitignore)
            -- actions.select_default:replace(
            --     function(prompt_bufnr)
            --         createGitignore(selection.path)
            --     end)
            actions.select_default:replace(action_choices)
            return true
        end
    }
end
return require('telescope').register_extension {
    exports = {gitignore = file_gitignore}
}
