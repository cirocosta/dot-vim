INSTALL

	git clone https://github.com/cirocosta/dot-vim ~/.vim --recursive
	ln -s $(realpath ~/.vim/.vimrc) $(realpath ~/.vimrc)

	pip3 install pynvim
	vim --cmd GoInstallBinaries

