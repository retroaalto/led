return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" }, -- or
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		config = function(_, opts)
			require("CopilotChat").setup(opts)
			vim.api.nvim_create_autocmd("BufEnter", {
				pattern = "copilot-*",
				callback = function()
					vim.opt.completeopt = vim.opt.completeopt + "noinsert" + "noselect" + "popup"
				end,
			})
			vim.api.nvim_create_autocmd("BufLeave", {
				pattern = "copilot-*",
				callback = function()
					vim.opt.completeopt = vim.opt.completeopt - "noinsert" - "noselect" - "popup"
				end,
			})
		end,
		opts = {
			mappings = {
				complete = {
					insert = "<C-j>",
				},
				reset = {
					normal = "<F5>",
					insert = "<F5>",
				},
			},
			system_prompt = "Your name is Github Copilot and you are a AI assistant for developers.",
			prompts = {
				CommitMessage = {
					system_prompt = "You are AI assistant for developers.",
					prompt = "Create git commit message for the changes made in the file. Do not describe the changes, describe end result.",
				},
			},
			-- See Configuration section for options
		},
	},
}
