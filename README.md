*Taken from: https://www.youtube.com/watch?v=7o9yiHO7gH*

**Installation for MAC and Linux:**
1) create the folders: ~/.vim/bundle/
2) download Vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
3) download vimrc: git clone https://github.com/ErnstPle/vim-config.git
4) store the vimrc as ~/.vimrc in your home directory
5) open vim and after the error messages type ":PluginInstall"

" Added more natural navigation between windows instead of shift + w, use <ctrl>
" + j,k,l,h, (:vs or :split)

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Added relative Numbering 
---------------------------
set relativenumber                          " show relative line numbers
