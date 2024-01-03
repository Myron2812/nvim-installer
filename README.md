# nvim-installer
The purpose of this repository is to test the nvim installation process and evaluate requirements.
## Installation:
1. Download and install [neovim](https://github.com/neovim/neovim/releases/).
3. Nerd font for devicons. Download and install devicons from [NerdFonts](https://www.nerdfonts.com/font-downloads). <br>
([JetBrains](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip) is highly recommended.)<br>
Unzip and install all fonts.
4. If nvim is already installed, make a backup of your nvim files:
   
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   ```
5. Copy the nvim folder to your ``~/.config/`` folder if on Linux and ``$HOME\AppData\Local\`` if on Windows.
6. Launch nvim and run ``:MasonInstall svls verible`` to install the SystemVerilog LSPs(Language Server Protocols).
7. Activate the LSPs by adding a ``.git`` folder inside your project folder (if the folder already has a ``.git`` folder, skip this step)
8. Enable the required configuration for the LSPs by adding the ``.svlint.toml`` and ``.rules.verible_lint`` files in this repository to your project folder.
