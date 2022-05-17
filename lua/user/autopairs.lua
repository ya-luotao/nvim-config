local status_ok, configs = pcall(require, 'nvim-autopairs')
if not status_ok then
  return
end

configs.setup {}
