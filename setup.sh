mkdir ~/.fonts
rm -rf ~/.config/alacritty
rm -rf ~/.config/i3
rm -rf ~/.config/nvim
rm -rf ~/.zshrc
rm -rf ~/.oh-my-zsh
mv ./.fonts/* ~/.fonts
mv ./.config/* ~/.config/
mv ./.zshrc ~/
mv ./.oh-my-zsh/ ~/
