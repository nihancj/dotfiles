return {
  settings = {
    pylsp = {
      plugins = {
        pyflakes = {
          enabled = false,
          ignore = { 'E303' }  -- Ignore the "too many blank lines" error (Pyflakes code E303)
        },
        pycodestyle = {
          enabled = false,
          ignore = { 'E303' }  -- Ignore the "too many blank lines" error (pycodestyle code E303)
        },
        yapf = {
          enabled = false,  -- If you're using yapf for formatting
          args = { '--ignore-blank-lines' }
        },
      }
    }
}
}
