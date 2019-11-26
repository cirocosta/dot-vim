INSTALL

	1. Retrieve this repo and link `.vimrc`

		git clone https://github.com/cirocosta/dot-vim ~/.vim --recursive
		ln -s $(realpath ~/.vim/.vimrc) $(realpath ~/.vimrc)


	2. Install youcompleteme for C completions

		cd ~/.vim/pack/cirocosta/start/YouCompleteMe
		./install.py --clang-completer
		cd $OLDPWD


	3. Prepare go completion

		open vim
		:GoInstallBinaries

