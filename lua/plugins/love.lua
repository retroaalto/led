return
-- using lazy.nvim
{
	"S1M0N38/love2d.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"neovim/nvim-lspconfig", -- Add nvim-lspconfig as a dependency
	},
	keys = {
		{ "<leader>v", ft = "lua", desc = "LÖVE" },
		{ "<leader>vv", "<cmd>LoveRun<cr>", ft = "lua", desc = "Run LÖVE" },
		{ "<leader>vs", "<cmd>LoveStop<cr>", ft = "lua", desc = "Stop LÖVE" },
	},
}
