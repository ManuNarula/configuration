-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
--local colors = {
  --blue   = '#81a2be',
  --cyan   = '#8abeb7',
  --black  = '#1d1f21',
  --white  = '#c5c8c6',
  --red    = '#cc6666',
  --violet = '#b294bb',
  --grey   = '#232731',
--}

local colors = {
  yank1  = '#8ca1bc',
  yank2  = '#5f7c98',
  yank3  = '#87858b',   -- !$!
  yank4  = '8992a0',
  yank5  = '#9cc4d4',
  white  = '#c5c8c6',
  black  = '#1d1f21',
  blue   = '#81a2be',
  grey   = '#232731',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue},
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.yank1} },
  visual = { a = { fg = colors.black, bg = colors.yank5 } },
  replace = { a = { fg = colors.black, bg = colors.white } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

--local bubbles_theme = {
  --normal = {
    --a = { fg = colors.black, bg = colors.violet },
    --b = { fg = colors.white, bg = colors.grey },
    --c = { fg = colors.black, bg = colors.black },
  --},

  --insert = { a = { fg = colors.black, bg = colors.blue } },
  --visual = { a = { fg = colors.black, bg = colors.cyan } },
  --replace = { a = { fg = colors.black, bg = colors.red } },

  --inactive = {
    --a = { fg = colors.white, bg = colors.black },
    --b = { fg = colors.white, bg = colors.black },
    --c = { fg = colors.black, bg = colors.black },
  --},
--}

require('lualine').setup({
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
})
