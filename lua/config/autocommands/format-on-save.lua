local CommonFormattingOptions = require("lib.core.common-formatting-options")

vim.api.nvim_create_autocmd("BufWritePre", {
  desc = "Format file before saving using LSP capabilities",
  pattern = "*.{py,lua,rs,cpp,c,proto,js,ts,tsx,css}",
  callback = function(_)
    -- Event payload:
    -- - id: (number) autocommand id
    -- - event: (string) name of the triggered event `autocmd-events`
    -- - group: (number|nil) autocommand group id, if any
    -- - match: (string) expanded value of [<amatch>]
    -- - buf: (number) expanded value of [<abuf>]
    -- - file: (string) expanded value of [<afile>]
    -- - data: (any) arbitrary data passed from [nvim_exec_autocmds()] [event-data](file:///usr/share/nvim/runtime/lua/vim/_meta)

    vim.lsp.buf.format({
      async = false, -- formatting should finish before buffer is written
      timeout_ms = 1500,
      -- https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#formattingOptions
      formatting_options = CommonFormattingOptions.formatting_options,
      filter = function(client)
        return true
      end
    });
  end
})

--     Parameters: ~
--       • {opts}  (`table?`) A table with the following fields:
--                 • {formatting_options}? (`table`) Can be used to specify
--                   FormattingOptions. Some unspecified options will be
--                   automatically derived from the current Nvim options. See
--                   https://microsoft.github.io/language-server-protocol/specification/#formattingOptions
--                 • {timeout_ms}? (`integer`, default: `1000`) Time in
--                   milliseconds to block for formatting requests. No effect if
--                   async=true.
--                 • {bufnr}? (`integer`, default: current buffer) Restrict
--                   formatting to the clients attached to the given buffer.
--                 • {filter}? (`fun(client: vim.lsp.Client): boolean?`)
--                   Predicate used to filter clients. Receives a client as
--                   argument and must return a boolean. Clients matching the
--                   predicate are included. Example: >lua
--                     -- Never request typescript-language-server for formatting
--                     vim.lsp.buf.format {
--                       filter = function(client) return client.name ~= "tsserver" end
--                     }
-- <
--                 • {async}? (`boolean`, default: false) If true the method
--                   won't block. Editing the buffer while formatting
--                   asynchronous can lead to unexpected changes.
--                 • {id}? (`integer`) Restrict formatting to the client with ID
--                   (client.id) matching this field.
--                 • {name}? (`string`) Restrict formatting to the client with
--                   name (client.name) matching this field.
--                 • {range}?
--                   (`{start:[integer,integer],end:[integer, integer]}|{start:[integer,integer],end:[integer,integer]}[]`,
--                   default: current selection in visual mode, `nil` in other
--                   modes, formatting the full buffer) Range to format. Table
--                   must contain `start` and `end` keys with {row,col} tuples
--                   using (1,0) indexing. Can also be a list of tables that
--                   contain `start` and `end` keys as described above, in which
--                   case `textDocument/rangesFormatting` support is required.
