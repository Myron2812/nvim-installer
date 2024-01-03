# nvim-installer
The purpose of this repository is to test the nvim installation process and evaluate requirements.
## Installation steps:
1. Download and install [neovim](https://github.com/neovim/neovim/releases/).
3. Nerd font for devicons. Download and install devicons from [NerdFonts](https://www.nerdfonts.com/font-downloads). <br>
([JetBrains](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip) is highly recommended.)<br>
Unzip and install all fonts.
4. Make a backup of your nvim files(if any):
   
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   ```
5. Copy the ``nvim-config`` folder to your ~/.config/ folder and rename it to ``nvim``.
6. Activate SystemVerilog Language servers by adding a ``.git`` folder inside your project folder (if the folder already has a .git folder, skip this step)
7. Enable the required configuration for the language servers by adding the ``.svlint.toml`` and ``.rules.verible_lint`` files in this repository to your project folder.
