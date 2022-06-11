local cmp_status_ok, Comment = pcall(require, "Comment")
if not cmp_status_ok then
  return
end

Comment.setup()

-- local comment_ft = require "Comment.ft"
-- comment_ft.set('lua', { "-- %s", "--[[%s]]" })
