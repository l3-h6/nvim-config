local lsp = require("plugins.lsp")
local completion = require("plugins.completion")
local treesitter = require("plugins.treesitter")
local ui = require("plugins.ui")
local git = require("plugins.git")
local filetree = require("plugins.filetree")
local tools = require("plugins.tools")
local editing = require("plugins.editing")
local formatting = require("plugins.formatting")
local commenting = require("plugins.commenting")
local ts = require("plugins.ts")
local refactor = require("plugins.refactor")
local project = require("plugins.project")
local ai = require("plugins.ai")

local all_plugins = {}
for _, group in ipairs({ai, lsp, completion, treesitter, ui, git, filetree, tools, editing, formatting, commenting, ts, refactor, project}) do
  if type(group) == "table" then
    for _, plugin in ipairs(group) do
      table.insert(all_plugins, plugin)
    end
  else
    table.insert(all_plugins, group)
  end
end

require("lazy").setup(all_plugins) 
