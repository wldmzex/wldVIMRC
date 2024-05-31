vim.g.mapleader = " "
local mode_nv = { "n", "v" }
local mode_n = { "n", "v" }
local mode_map = { "n", "v","o" }
local mode_v= { "v" }
local mode_i = { "i" }
local nmappings={ 
--movement
{from = "w",			 to = "k",							mode = mode_nv 	},
{from = "a",			 to = "h",							mode = mode_nv 	},
{from = "r",			 to = "j",							mode = mode_nv	},
{from = "s",			 to = "l",							mode = mode_nv  },
{from = "R",			 to = "5j",							mode = mode_nv 	},
{from = "W",			 to = "5k",							mode = mode_nv 	},
{from = "A",			 to = "5h",							mode = mode_nv 	},
{from = "S",			 to = "5l",							mode = mode_nv 	},
{from = "<M-w>",		 to = "N",							mode = mode_nv 	},
{from = "<M-r>",		 to = "n",							mode = mode_nv 	},
{from = "<C-w>",		 to = "<Up>",							mode = mode_i	},
{from = "<C-a>",		 to = "<Left>",							mode = mode_i	},
{from = "<C-r>",		 to = "<Down>",							mode = mode_i	},
{from = "<C-s>",		 to = "<Right>",						mode = mode_i	},
--insert
{from = "t",			 to = "d",							mode = mode_map	},
{from = "y",			 to = "q",							mode = mode_map	},
{from = "f",			 to = "y",							mode = mode_map	},
{from = "n",			 to = "a",							mode = mode_map	},
{from = "N",			 to = "A",							mode = mode_map	},
{from = "<M-q>",		 to = ":q!",							mode = mode_map	},
--mapcommand
{from = "q",	    		 to = ":q<CR>",							mode = mode_n},
{from = "<space>a",		 to = ":set nosplitright<CR>:vsplit<CR>",			mode = mode_nv},
{from = "<space>s",		 to = ":set splitright<CR>:vsplit<CR>",				mode = mode_nv},
{from = "<space>w",		 to = ":set nosplitbelow<CR>:split<CR>",			mode = mode_nv},
{from = "<space>r",		 to = ":set splitbelow<CR>:split<CR>",				mode = mode_nv},
{from = "Q",			 to = ":wq<CR>"	,						mode = mode_n},
{from = "<space>i",		 to = "<C-w><Right>",						mode = mode_n},
{from = "<space>n",		 to = "<C-w><Left>",						mode = mode_n},
{from = "<space>e",		 to = "<C-w><Down>",						mode = mode_n},
{from = "<space>u",		 to = "<C-w><Up>",						mode = mode_n},
{from = "<C-k>",		 to = ":source $MYVIMRC<CR>"},
{from = "<C-s>",		 to = ":w<CR>",							mode = mode_n},
{from = "<C-t>",		 to = "<BS>",							mode = mode_i},
--ranger-vim configuration
{from = "<C-f>",		 to = ":Ranger<CR>",						mode = mode_map},
{from = "<space>t", 		 to = ":!make -C ../..<CR>:!make download -C ../..<CR>",	mode = mode_nv}
}

for _, mapping in ipairs(nmappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end
