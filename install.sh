#bash

if [ -e ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc_backup
    cp ./zsh/.zshrc ~/.zshrc
fi

if [ -d ~/.config/nvim ]; then
    mv ~/.config/nvim ~/.config/nvim_bak -r
    cp -r ./nvim ~/.config/nvim -r
fi
