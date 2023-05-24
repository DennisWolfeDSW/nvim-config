return {
  {
    "mfussenegger/nvim-dap",
    lazy = false,
    config = function()
      require("dap").adapters["pwa-node"] = {
        type = "server",
        host = "127.0.0.1",
        port = "${port}",
        executable = {
          command = "node",
          -- 💀 Make sure to update this path to point to your installation
          args = { "/Users/dw431093/Downloads/js-debug/src/dapDebugServer.js", "${port}" },
        },
      }
      require("dap").configurations.javascript = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
      }
    end,
  },
}
