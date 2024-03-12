local on_exit = function(obj)
  print(obj.code)
  print(obj.signal)
  print(obj.stdout)
  print(obj.stderr)
end

vim.api.nvim_create_autocmd({"BufWrite"}, {
  callback = function(ev)
	--x = vim.api.nvim_parse_cmd("echo 'hello'", {})
	--vim.api.nvim_cmd(x, {})
	
    	
  end
})
