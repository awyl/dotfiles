return {
	module = "dap",
	-- config = {},
	requires = {
		{
			"rcarriga/nvim-dap-ui",
			after = "nvim-dap",
			config = function()
				local dap, dapui = require("dap"), require("dapui")
				require("dapui").setup()
				dap.listeners.after.event_initialized["dapui_config"] = function()
					dapui.open()
				end
				dap.listeners.before.event_terminated["dapui_config"] = function()
					dapui.close()
				end
				dap.listeners.before.event_exited["dapui_config"] = function()
					dapui.close()
				end

				-- DAP mappings:
				local map = vim.api.nvim_set_keymap
				map("n", "<f5>", ":lua require('dap').continue()<cr>", { desc = "Continue" })
				map("n", "<f10>", ":lua require('dap').step_over()<cr>", { desc = "Step over" })
				map("n", "<f11>", ":lua require('dap').step_into()<cr>", { desc = "Step into" })
				map("n", "<f12>", ":lua require('dap').step_out()<cr>", { desc = "Step out" })
				map("n", "<leader>Dp", ":lua require('dap').toggle_breakpoint()<cr>", { desc = "Toggle breakpoint" })
				map(
					"n",
					"<leader>Dc",
					":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>",
					{ desc = "Set conditional breakpoint" }
				)
				map(
					"n",
					"<leader>Dl",
					":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Logpoint message: '))<cr>",
					{ desc = "Set logpoint" }
				)
				map("n", "<leader>Dr", ":lua require('dap').repl.open()<cr>", { desc = "Open REPL" })
				map("n", "<leader>DD", ":lua require('dap').run_last()<cr>", { desc = "Run last debugged program" })
				map(
					"n",
					"<leader>DX",
					":lua require('dap').terminate()<cr>",
					{ desc = "Terminate program being debugged" }
				)
				map("n", "<leader>Du", ":lua require('dap').up()<cr>", { desc = "Up one frame" })
				map("n", "<leader>Dd", ":lua require('dap').down()<cr>", { desc = "Down one frame" })
			end,
		},
		{
			"theHamsta/nvim-dap-virtual-text",
			after = "nvim-dap",
			config = function()
				require("nvim-dap-virtual-text").setup()
			end,
		},
		{
			"nvim-telescope/telescope-dap.nvim",
			after = "telescope.nvim",
			-- module = "telescope._extensions.dap",
			config = function()
				require("telescope").load_extension("dap")
			end,
		},
	},
}
