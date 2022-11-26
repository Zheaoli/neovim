-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT
-- recommend plugins key defines in this file
require("keymap.config")
local keymap = require("core.keymap")
local nmap = keymap.nmap
local silent, noremap = keymap.silent, keymap.noremap
local opts = keymap.new_opts
local cmd = keymap.cmd

-- usage of plugins
nmap({
  -- packer
  { "<Leader>pu", cmd("PackerUpdate"), opts(noremap, silent) },
  { "<Leader>pi", cmd("PackerInstall"), opts(noremap, silent) },
  { "<Leader>pc", cmd("PackerCompile"), opts(noremap, silent) },
  -- vfilter
  { "<Leader>ff", cmd("lua require('vfiler').start()"), opts(noremap, silent) },
  {
    "<Leader>fa",
    cmd("Telescope live_grep"),
    opts(noremap, silent),
  },
  { "<Leader>fp", cmd("Telescope neoclip"), opts(noremap, silent) },
  {
    "<Leader>fs",
    cmd("Telescope lsp_dynamic_workspace_symbols"),
    opts(noremap, silent),
  },
  {
    "<Leader>fh",
    cmd("Telescope oldfiles"),
    opts(noremap, silent),
  },
  { '<Leader>fF', cmd('Telescope find_files'), opts(noremap, silent) },
})

