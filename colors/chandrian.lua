for k in pairs(package.loaded) do
    if k:match(".*chandrian.*") then package.loaded[k] = nil end
end

require('chandrian').setup()
require('chandrian').colorscheme()
