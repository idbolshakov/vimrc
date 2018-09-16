init:
	# prepare
	mkdir -p ~/.vim/colors;
	mkdir -p ~/.vim/bundle;

	# clone vim plugins
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
	git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

	# copy configs
	cp configs/.vimrc ~/.vimrc;
	cp configs/hybrid_material.vim ~/.vim/colors/hybrid_material.vim;

	# complete message
	echo Initialization completed. Before usage install plugins. Inside vim run: :PluginInstall

clean:
	rm -rf ~/.vimrc;
	rm -rf ~/.vim;
