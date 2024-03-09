return {
  "xixiaofinland/sf.nvim",
  branch = "dev",
  -- dir = '~/projects/sf.nvim',

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
  },

  keys = {
    { "<leader>;s", "<cmd>Sf.set_target_org<cr>", desc = "[s]et target_org current workspace" },
    { "<leader>;S", "<cmd>Sf.set_global_target_org<cr>", desc = "[S]et global target_org" },
    { "<leader>;f", "<cmd>Sf.fetch_org_list<cr>", desc = "[F]etch orgs info" },
    { "<leader>;d", "<cmd>Sf.diff_in_target_org<cr>", desc = "[d]iff in target_org" },
    { "<leader>;D", "<cmd>Sf.diff_in_org<cr>", desc = "[D]iff in org..." },
    { "<leader>;l", "<cmd>Sf.list_md_to_retrieve<cr>", desc = "[M]etadata [L]isting" },
    { "<leader>;L", "<cmd>Sf.pull_and_list_md<cr>", desc = "Force pull and list metadata" },
    { "<leader>;tl", "<cmd>Sf.list_md_type_to_retrieve<cr>", desc = "[M]etadata-[T]ype [L]isting" },
    { "<leader>;tL", "<cmd>Sf.pull_and_list_md_type<cr>", desc = "Force pull and list metadata types" },
    { "<leader>;a", "<cmd>Sf.retrieve_apex_under_cursor<cr>", desc = "[A]pex under cursor retrieve" },
    { "<leader>;T", "<cmd>Sf.toggle_term<cr>", desc = "[T]erminal toggle" },
    { "<leader>;R", "<cmd>Sf.go_to_sf_root<cr>", desc = "CD into [R]oot" },
    { "<C-c>", "<cmd>Sf.cancel<cr>", desc = "[C]ancel current running command" },
    { "<leader>;p", "<cmd>Sf.save_and_push<cr>", desc = "[P]ush current file" },
    { "<leader>;r", "<cmd>Sf.retrieve<cr>", desc = "[R]etrieve current file" },
    { "<leader>;a", "<cmd>Sf.run_all_tests_in_this_file<cr>", desc = "[T]est [A]ll" },
    { "<leader>;t", "<cmd>Sf.run_current_test<cr>", desc = "[T]est [T]his under cursor" },
    { "<leader>;o", "<cmd>Sf.open_test_select<cr>", desc = "[T]est [O]pen Buf Select" },
    { "<leader>;r", "<cmd>Sf.repeat_last_tests<cr>", desc = "[T]est [R]epeat" },
    { "<leader>;c", "<cmd>Sf.copy_apex_name<cr>", desc = "[c]opy apex name" },
  },

  config = function()
    require("sf").setup({

      -- Hotkeys and user commands are enabled for these filetypes
      -- hotkeys_in_filetypes = {
      --   "apex", "sosl", "soql", "javascript", "html"
      -- },

      -- When set to `true`, hotkeys and user commands are only nenabled when the file
      -- resides in a sf project folder (i.e. has `.forceignore` or `sfdx-project.json` in the root path)
      -- When set to `false`, filetypes defined in `hotkeys_in_filetypes` have
      -- hotkeys and user commands enabled.
      enable_hotkeys_only_in_sf_project_folder = true,

      -- Define what metadata file names to be listed in `list_md_to_retrieve()` (<leader>ml)
      -- types_to_retrieve = {
      --   "ApexClass",
      --   "ApexTrigger",
      --   "StaticResource",
      --   "LightningComponentBundle"
      -- },
    })
  end,
}
