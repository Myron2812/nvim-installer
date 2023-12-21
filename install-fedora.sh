echo "Beginning installation... Please grant sudo(admin) privileges"
echo "Installing neovim"
sudo dnf install -y neovim python3-neovim
echo "Neovim installation complete"
echo "Adding Plugin configurations"
git clone https://github.com/Myron2812/nvim-installer.git
rm -rf ~/.config/nvim/
mv ~/nvim-installer/nvim/ ~/.config/
rm -rf ~/nvim-installer/
echo "Plugin Installation complete"
