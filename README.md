Taken from: https://www.youtube.com/watch?v=7o9yiHO7gH

Installation:
1) download Vundle git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
2) and put it into the ~/.vim/bundle/ folder
3) download vimrc
3) open vim and after the error messages type ":PluginInstall"

" Added more natural navigation between windows instead of shift + w, use <ctrl>
" + j,k,l,h, (:vs or :split)

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Added relative Numbering 
---------------------------
set relativenumber                          " show relative line numbers
