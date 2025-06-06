# I use opensuse tumbleweed
zypper install -y radare2 nodejs-common python313-pipx neovim java-21-openjdk-devel

cd ~/Downloads/ # Should already be in downloads but making sure.

# ghidra
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.3.2_build/ghidra_11.3.2_PUBLIC_20250415.zip
7z x ghidra_11.3.2_PUBLIC_20250415.zip
mv ghidra_11.3.2_PUBLIC /usr/local/bin/
echo "export PATH=\"/usr/local/bin/ghidra_11.3.2_PUBLIC:$PATH\"" >> ~/.bashrc

mkdir ~/Analysis
cd ~/Analysis/

pipx install frida-tools # CLI tools
npm install frida       # Node.js bindings
