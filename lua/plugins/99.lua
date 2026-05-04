return {
	-- testing Primeagen's nvim native way to call coding agents without losing control of your own code.
	"ThePrimeagen/99",
	config = function()
		local _99 = require("99")

		local cwd = vim.uv.cwd()
		local basename = vim.fs.basename(cwd)
		_99.setup({
			-- provider = _99.Providers.OpenCodeProvider,
			-- model = "opencode/kimi-k2.5",
			provider = _99.Providers.ClaudeCodeProvider,
			model = "claude-sonnet-4-6",

			logger = {
				level = _99.DEBUG,
				path = "/tmp/" .. basename .. ".99.debug",
				print_on_error = true,
			},

			completion = {
				source = "cmp",
				custom_rules = {
					"scratch/custom_rules/",
				},
			},

			md_files = {
				"AGENT.md",
			},
		})

		vim.keymap.set("v", "<leader>9v", function()
			_99.visual()
		end, { desc = "99: Run visual selection" })

		vim.keymap.set("n", "<leader>9x", function()
			_99.stop_all_requests()
		end, { desc = "99: Stop all requests" })

		vim.keymap.set("n", "<leader>9s", function()
			_99.search()
		end, { desc = "99: Search" })

		vim.keymap.set("n", "<leader>9l", function()
			_99.view_logs()
		end, { desc = "99: View logs" })

		vim.keymap.set("n", "<leader>9w", function()
			_99.vibe()
		end, { desc = "99: Vibe mode" })

		vim.keymap.set("o", "<leader>9w", function()
			_99.open()
		end, { desc = "99: Open" })
	end,
}
