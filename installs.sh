zypper install radare2 nodejs-common python313-pipx neovim
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.3.2_build/ghidra_11.3.2_PUBLIC_20250415.zip

7z x ghidra_11.3.2_PUBLIC_20250415.zip
mv ghidra_11.3.2_PUBLIC /usr/local/bin/
echo "export PATH=\"/usr/local/bin/ghidra_11.3.2_PUBLIC:$PATH\"" >> ~/.bashrc

mkdir ~/Analysis

pipx install frida-tools # CLI tools
npm install frida       # Node.js bindings

cd ~/Analysis/

echo "/usr/lib64/jvm/jre-21-openjdk/bin/java"
