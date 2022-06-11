local status_ok, neoclip = pcall(require, "neoclip")
if not status_ok then
    return
end

neoclip.setup({
    history = 300,
    enable_persistent_history = false,
})
