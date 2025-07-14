local lsp = require("plugins.lsp")
local completion = require("plugins.completion")
local treesitter = require("plugins.treesitter")
local ui = require("plugins.ui")
local git = require("plugins.git")
local filetree = require("plugins.filetree")
local tools = require("plugins.tools")

local all_plugins = {}
for _, group in ipairs({lsp, completion, treesitter, ui, git, filetree, tools}) do
  if type(group) == "table" then
    for _, plugin in ipairs(group) do
      table.insert(all_plugins, plugin)
    end
  else
    table.insert(all_plugins, group)
  end
end

require("lazy").setup(all_plugins) 