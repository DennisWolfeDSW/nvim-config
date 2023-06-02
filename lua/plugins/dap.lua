return {
  {
    "Joakker/lua-json5",
    build = "./install.sh",
    lazy = false,
    config = function()
      package.cpath = package.cpath .. ";.?.dylib;./lua/?.so"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    lazy = false,
    dependencies = {
      "Joakker/lua-json5",
    },
    config = function()
      require("dap").adapters["pwa-node"] = {
        type = "server",
        host = "127.0.0.1",
        port = "${port}",
        executable = {
          command = "node",
          -- 💀 Make sure to update this path to point to your installation
          args = { "/Users/dw431093/Developer/nvim/js-debug/src/dapDebugServer.js", "${port}" },
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
      require("dap").configurations.typescript = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
      }
      require("dap.ext.vscode").json_decode = require("json5").parse
      require("dap.ext.vscode").load_launchjs(nil, {
        ["pwa-node"] = { "javascript", "typescript" },
      })
    end,
  },
}
