INSTALL

	1. Retrieve this repo and link `.vimrc`

		git clone https://github.com/cirocosta/dot-vim ~/.vim --recursive
		ln -s $(realpath ~/.vim/.vimrc) $(realpath ~/.vimrc)


	2. Prepare go completion

		open vim
		:GoInstallBinaries
			- use omnifunc: <C-x><C-o>
			- jump to def: `gd`
