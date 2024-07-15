#!/bin/bash

LICENSE_FILE="$HOME/.license"

# ANSI escape sequences for colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RESET='\033[0m'  # Reset text color to default

check_license() {
    if [ -f "$LICENSE_FILE" ]; then
        LICENSE_KEY=$(cat "$LICENSE_FILE")
        if [ "$LICENSE_KEY" == "DZ4KYVVIPKEY" ]; then
            return 0
        fi
    fi
    return 1
}

# Fungsi untuk menampilkan pesan setelah lisensi valid
display_message() {
    clear
    echo ""
    echo ""
    echo ""
    echo -e "${RED}"
    echo "____      _    ___ _   _ __  __  ____"
    echo "|  _ \\    / \\  |_ _| \\ | |  \\/  |/ ___|"
    echo "| |_) |  / _ \\  | ||  \\| | |\\/| | |"
    echo "|  _ <  / ___ \\ | || |\\  | |  | | |___"
    echo "|_| \\_\\/_/   \\_\\___|_| \\_|_|  |_|\\____|"
    echo ""
    echo "          \\ \\/ /"
    echo "           \\  /"
    echo "           /  \\"
    echo "          /_/\\_\\"
    echo ""
    echo "_   _    _    ____ _____  _    ____  _______     __"
    echo "| | | |  / \\  / ___|_   _|/ \\  |  _ \\| ____\\ \\   / /"
    echo "| |_| | / _ \\| |     | | / _ \\ | | | |  _|  \\ \\ / /"
    echo "|  _  |/ ___ \\ |___  | |/ ___ \\| |_| | |___  \\ V /"
    echo "|_| |_/_/   \\_\\____| |_/_/   \\_\\____/|_____|  \\_/"
    echo -e "${RESET}"
    echo ""
    echo ""
    echo -e "${ORANGE}                    WHATSAPP : 085657013784${RESET}"
    echo ""
}

# Fungsi instalasi perangkat lunak
install_software() {
    echo -e ${RED}"𝗟𝗜𝗖𝗘𝗡𝗦𝗘 𝗔𝗡𝗗𝗔 𝗕𝗘𝗡𝗔𝗥!!, 𝗠𝗔𝗦𝗨𝗞𝗔𝗡 𝗨𝗟𝗔𝗡𝗚"
}

# Fungsi untuk animasi teks berkedip satu per satu
animate_text() {
    local text="$1"
    local delay="${2:-0.1}"

    for (( i = 0; i < ${#text}; i++ )); do
        echo -en "${text:$i:1}"
        sleep "$delay"
    done
    echo -e "${RESET}"
}

# Main script
if check_license; then
    display_message
    install_software
    animate_text "𝖯𝖮𝖶𝖤𝖱𝖤𝖣 𝖡𝖸 𝖧𝖤𝖢𝖳𝖠𝖣𝖤𝖵"
else
    echo "Masukkan lisensi Anda:"
    read -r LICENSE_KEY
    echo "$LICENSE_KEY" > "$LICENSE_FILE"
    check_license
    if [ $? -eq 0 ]; then
        display_message
        install_software
        animate_text "𝖯𝖮𝖶𝖤𝖱𝖤𝖣 𝖡𝖸 𝖧𝖤𝖢𝖳𝖠𝖣𝖤𝖵"
    else
        echo "Lisensi tidak valid."
        exit 1
    fi
fi

# Fungsi untuk menangani pilihan "FIX YARN"
fix_yarn() {
    echo "Anda memilih untuk memperbaiki YARN."
    echo "Menjalankan perintah perbaikan YARN..."
# Pemeriksaan apakah pengguna sudah memiliki panel Pterodactyl
    echo "KAMU HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
        # Lanjutkan dengan instalasi tema

    # Perintah untuk memperbaiki YARN
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
    cd /var/www/pterodactyl
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
    yarn build:production

    echo "Perbaikan YARN selesai."
elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ]; then
        echo "Instalasi tema Enigma dibatalkan karena Anda tidak memiliki panel Pterodactyl."
        exit 1
    else
        echo "Pilihan tidak valid. Instalasi dibatalkan."
        exit 1
    fi
}
installThemeice(){
    echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            apt install git
            cd /var/www/
            tar -cvf IceMinecraftTheme.tar.gz pterodactyl
            echo "Installing theme..."
            cd /var/www/pterodactyl
            rm -r IceMinecraftTheme
            git clone https://github.com/Angelillo15/IceMinecraftTheme.git
            cd IceMinecraftTheme
            rm /var/www/pterodactyl/resources/scripts/IceMinecraftTheme.css
            rm /var/www/pterodactyl/resources/scripts/index.tsx
            rm /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
            mv resources/scripts/index.tsx /var/www/pterodactyl/resources/scripts/index.tsx
            mv resources/scripts/IceMinecraftTheme.css /var/www/pterodactyl/resources/scripts/IceMinecraftTheme.css
            mv resources/scripts/components/server/console/Console.tsx /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
            cd /var/www/pterodactyl

            curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
            apt update
            apt install -y nodejs

            npm i -g yarn
            yarn

            cd /var/www/pterodactyl
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
            yarn build:production
            sudo php artisan optimize:clear

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
deletefilesptero(){
    echo "PROSES"
    echo "Menjalankan perintah Anda"
    echo "APAKAH ANDA INGIN MENGUNINSTAL FILE PTERODACTYL? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    cd /var/ && rm -r www
    echo "FILE PTERODACTYL TELAH TER UNINSTALL"
    elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ]; then
        echo "Instalasi tema Enigma dibatalkan karena Anda tidak memiliki panel Pterodactyl."
        exit 1
    else
        echo "Pilihan tidak valid. Instalasi dibatalkan."
        exit 1
    fi
}
# Fungsi untuk menangani pilihan "INSTALL THEME ENIGMA"
install_theme_enigma() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"

            # Perintah untuk mengunduh dan menginstal tema Enigma
            apt install git
            cd /var/www && git clone https://github.com/rainmc0123/RainMc.git
            mv /var/www/RainMc/enigmarain.zip /var/www/
            rm -r RainMc
            apt install unzip
echo "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗣𝗜𝗟𝗜𝗛 𝗔"
            unzip enigmarain.zip         
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ ʏ"
            sudo mkdir -p /etc/apt/keyrings
            curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
            echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
            sudo apt update
            sudo apt install -y nodejs
            npm i -g yarn
            cd /var/www/pterodactyl
            yarn
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
            yarn build:production
            echo "Tema Enigma telah diinstal."

            # Perintah untuk instalasi tambahan
            echo "Melakukan konfigurasi tambahan..."

            # Pemeriksaan dan instalasi dependensi (contoh)
            # Misalnya:
            # sudo apt update
            # sudo apt install -y package_name

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}

installnightcoretheme(){

echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            
    apt install sudo -y > /dev/null 2>&1
    cd /var/www/ > /dev/null 2>&1
    tar -cvf Pterodactyl_Nightcore_Themebackup.tar.gz pterodactyl > /dev/null 2>&1
    echo -e "${GREEN}𝟯𝟬%${RESET}"
    cd /var/www/pterodactyl > /dev/null 2>&1
    echo -e "${GREEN}𝟲𝟬℅${RESET}"
    rm -r Pterodactyl_Nightcore_Theme > /dev/null 2>&1
    echo -e "${GREEN}𝟴𝟬%${RESET}"
    git clone https://github.com/NoPro200/Pterodactyl_Nightcore_Theme.git > /dev/null 2>&1
    cd Pterodactyl_Nightcore_Theme > /dev/null 2>&1
    echo -e "${GREEN}𝟵𝟬%${RESET}"
    rm /var/www/pterodactyl/resources/scripts/Pterodactyl_Nightcore_Theme.css > /dev/null 2>&1
    rm /var/www/pterodactyl/resources/scripts/index.tsx > /dev/null 2>&1
    echo -e "${GREEN}𝟵𝟱%${RESET}"
    echo -e "${GREEN}KEMUNGKINAN AKAN SEDIKIT LAMA,SELAMAT MENUNGGU${RESET}"
    mv index.tsx /var/www/pterodactyl/resources/scripts/index.tsx > /dev/null 2>&1
    mv Pterodactyl_Nightcore_Theme.css /var/www/pterodactyl/resources/scripts/Pterodactyl_Nightcore_Theme.css > /dev/null 2>&1
    cd /var/www/pterodactyl > /dev/null 2>&1
    
    curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash - > /dev/null 2>&1
    apt update -y > /dev/null 2>&1
    apt install nodejs -y > /dev/null 2>&1
    
    NODE_VERSION=$(node -v)
    REQUIRED_VERSION="v16.20.2"
    if [ "$NODE_VERSION" != "$REQUIRED_VERSION" ]; then
        echo -e "${GREEN}Node.js version is not ${YELLOW}${REQUIRED_VERSION}${GREEN}. Version: ${YELLOW}${NODE_VERSION}${RESET}"
        echo -e "${GREEN}Set version to ${YELLOW}v16.20.2${GREEN}... ${RESET}"
        sudo npm install -g n > /dev/null 2>&1
        sudo n 16 > /dev/null 2>&1
        node -v > /dev/null 2>&1
        npm -v > /dev/null  2>&1
        echo -e "${GREEN}Now the default version is ${YELLOW}${REQUIRED_VERSION}"
    else
        echo -e "${GREEN}Node.js Version is compatible: ${YELLOW}${NODE_VERSION} ${RESET}"
    fi

    apt install npm -y > /dev/null 2>&1
    npm i -g yarn > /dev/null 2>&1
    yarn > /dev/null 2>&1

    cd /var/www/pterodactyl > /dev/null 2>&1
    echo -e "${GREEN}𝟵𝟴%${RESET}"
    yarn build:production > /dev/null 2>&1
    echo -e "${GREEN}𝟭𝟬𝟬%${RESET}"
    sudo php artisan optimize:clear > /dev/null 2>&1
    echo -e "${BLUE}𝗜𝗡𝗦𝗧𝗔𝗟𝗟 𝗖𝗢𝗠𝗣𝗟𝗜𝗖𝗔𝗧𝗘𝗗"
    echo -e "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗖𝗘𝗞 𝗪𝗘𝗕 𝗣𝗔𝗡𝗘𝗟 𝗔𝗡𝗗𝗔${RESET}"
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
install_theme_nooktheme() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"

            # Perintah untuk mengunduh dan menginstal tema
            apt install git
            cd /var/www/pterodactyl
            echo -e "${RED}PROSES PANEL ANDA AKAN DIMATIKAN SEMENTARA, UNTUK INSTALL TEMA${RESET}"
            php artisan down
            echo -e "PANEL ANDA TELAH DIMATIKAN, MOHON TIDAK MENUTUP SESSION INI"
            curl -L https://github.com/Nookure/NookTheme/releases/latest/download/panel.tar.gz | tar -xzv
           chmod -R 755 storage/* bootstrap/cache
           echo -e ${YELLOW} "SILAHKAN KETIK yes"${RESET}
           composer install --no-dev --optimize-autoloader
           php artisan view:clear
           php artisan config:clear
           php artisan migrate --seed --force
           chown -R www-data:www-data /var/www/pterodactyl/*
           php artisan queue:restart
            echo -e ${GREEN}"INSTALL THEME SELESAI"${RESET}
           echo -e ${YELLOW}"PROSES MENGAKTIFKAN KEMBALI PANEL PTERODACTYL ANDA"${RESET}
           php artisan up
           echo -e ${GREEN}"SELESAI, SILAHKAN MASUK KE WEB PANEL PTERODACTYL ANDA"${RESET}

            # Pemeriksaan dan instalasi dependensi (contoh)
            # Misalnya:
            # sudo apt update
            # sudo apt install -y package_name

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu."
        exit 1
    fi
}

# Fungsi untuk menangani pilihan "INSTALL BILLING MODULE"
install_billing_module() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then

            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"
            
    echo "Anda memilih untuk menginstal Billing Module."
    echo "Menjalankan perintah instalasi Billing Module"
        # Lanjutkan dengan instalasi tema

    # Perintah untuk instalasi Billing Module
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
    cd /var/www/
    wget https://download1582.mediafire.com/tp82qkr13zlgXygV6f9r6KZbm0RdsVUhIhCYw5hAMd2fy2FwzVcQBSjA7jaZsW_n77bmtqWKiV1VKDrbOL9QiqJh2kzDR_o8d6LIxzVBCKctI3eCx2DfTpJpBAzg5uyg2vENBPeYcQrbXW0g0KHOWqPmr4h5tdAYJ3bFcD7BSQJwn-az/ajzpzd0n54d3rvm/billmodv11.zip
    apt install unzip
echo "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗣𝗜𝗟𝗜𝗛 𝗔"
    unzip billmodv11.zip
    cd /var/www/pterodactyl
    yarn
    php artisan billing:install stable
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
    yarn build:production

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
installThemeice() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪ ʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"
                sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
    apt install unzip
    cd /var/www/pterodactyl
    yarn
    chown -R www-data:www-data /var/www/pterodactyl/*
    php artisan optimize
    php artisan view:clear
            cd /var/www/
            tar -cvf IceMinecraftTheme.tar.gz pterodactyl
            echo "Installing theme..."
            cd /var/www/pterodactyl
            rm -r IceMinecraftTheme
            git clone https://github.com/Angelillo15/IceMinecraftTheme.git
            cd IceMinecraftTheme
            rm /var/www/pterodactyl/resources/scripts/IceMinecraftTheme.css
            rm /var/www/pterodactyl/resources/scripts/index.tsx
            rm /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
            mv resources/scripts/index.tsx /var/www/pterodactyl/resources/scripts/index.tsx
            mv resources/scripts/IceMinecraftTheme.css /var/www/pterodactyl/resources/scripts/IceMinecraftTheme.css
            mv resources/scripts/components/server/console/Console.tsx /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
            cd /var/www/pterodactyl

            cd /var/www/pterodactyl
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
            yarn build:production
            sudo php artisan optimize:clear

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
install_futuristic_theme() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"
                sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
    apt install unzip
    cd /var/www/pterodactyl
    yarn
    chown -R www-data:www-data /var/www/pterodactyl/*
    php artisan optimize
    php artisan view:clear
            cd /var/www/
            apt install git
            git clone https://github.com/rainmc0123/RainFuturistic
            mv /var/www/RainFuturistic/pterodactyl.zip /var/www/
            echo "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗣𝗜𝗟𝗜𝗛 𝗔"
            unzip pterodactyl.zip
            echo "Installing theme..."
            cd /var/www/pterodactyl
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
            yarn build:production
            sudo php artisan optimize:clear

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}


# Fungsi untuk menangani pilihan "UNINSTALL THEME"
uninstall_theme() {
    echo "Anda memilih untuk menghapus tema."
    echo "Menjalankan perintah uninstall tema..."

# Pemeriksaan apakah pengguna sudah memiliki panel Pterodactyl
    echo "KAMU HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then

        # Lanjutkan dengan instalasi tema

    # Perintah untuk uninstall tema
    cd /var/www/
    rm -r pterodactyl.zip
    rm -r enigmarain.zip
    rm -r RainMc
    rm -r billmodv11.zip
    rm -r IceMinecraftTheme.tar.gz
    rm -r RainFuturistic
    cd /var/www/pterodactyl
    php artisan down
    curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | tar -xzv
    chmod -R 755 storage/* bootstrap/cache
    composer install --no-dev --optimize-autoloader
    php artisan view:clear
    php artisan config:clear
    php artisan migrate --seed --force
    chown -R www-data:www-data /var/www/pterodactyl/*
    php artisan up

    echo "Uninstall tema selesai."
   elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ]; then
        echo "Instalasi tema Enigma dibatalkan karena Anda tidak memiliki panel Pterodactyl."
        exit 1
    else
        echo "Pilihan tidak valid. Instalasi dibatalkan."
        exit 1
    fi
}
# Fungsi untuk menampilkan menu opsi
LICENSE_FILE="/tmp/license_key"
LICENSE_TIMESTAMP_FILE="/tmp/license_timestamp"

show_menu() {
    if [ "$1" == "first" ]; then
        message="SAYA ADALAH PROGRAM YANG DIBUAT UNTUK MEMBANTU ANDA, SILAHKAN DIPILIH OPSI DIBAWAH INI."
        for (( i=0; i<${#message}; i++ )); do
            echo -n "${message:$i:1}"
            sleep 0.1
        done
        echo
    fi
    echo -e "\n\033[1;34mPilihan:\033[0m"
    for i in {1..12}; do
        case $i in
            1) echo -e "\033[1;34m1. 𝗙𝗶𝘅 𝗬𝗮𝗿𝗻 𝗘𝗿𝗿𝗼𝗿\033[0m";;
            2) echo -e "\033[1;34m2. 𝗘𝗻𝗶𝗴𝗺𝗮 𝗧𝗵𝗲𝗺𝗲 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗲𝗿\033[0m";;
            3) echo -e "\033[1;34m3. 𝗕𝗶𝗹𝗹𝗶𝗻𝗴 𝗠𝗼𝗱𝘂𝗹𝗲 𝗣𝘁𝗲𝗿𝗼𝗱𝗮𝗰𝘁𝘆𝗹 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗲𝗿\033[0m";;
            4) echo -e "\033[1;34m4. 𝗜𝗰𝗲 𝗧𝗵𝗲𝗺𝗲 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗲𝗿\033[0m";;
            5) echo -e "\033[1;34m5. 𝗨𝗻𝗶𝗻𝘀𝘁𝗮𝗹𝗹 𝗧𝗵𝗲𝗺𝗲 \033[0m";;
            6) echo -e "\033[1;34m6. 𝗛𝗮𝗽𝘂𝘀 𝗙𝗶𝗹𝗲 𝗣𝘁𝗲𝗿𝗼𝗱𝗮𝗰𝘁𝘆𝗹\033[0m";;
            7) echo -e "\033[1;34m7. 𝗙𝘂𝘁𝘂𝗿𝗶𝘀𝘁𝗶𝗰 𝗧𝗵𝗲𝗺𝗲 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗲𝗿 (𝗘𝗥𝗥𝗢𝗥)\033[0m";;
            8) echo -e "\033[1;34m8. 𝗜𝗻𝘀𝘁𝗮𝗹𝗹 𝗖𝗼𝗻𝘁𝗿𝗼𝗹 𝗣𝗮𝗻𝗲𝗹 𝗣𝘁𝗲𝗿𝗼𝗱𝗮𝗰𝘁𝘆𝗹\033[0m";;
            9) echo -e "\033[1;34m9. 𝗜𝗻𝘀𝘁𝗮𝗹𝗹 𝗣𝘁𝗲𝗿𝗼𝗱𝗮𝗰𝘁𝘆𝗹 𝗣𝗮𝗻𝗲𝗹\033[0m";;
            10) echo -e "\033[1;34m10. 𝗜𝗻𝘀𝘁𝗮𝗹𝗹 𝗡𝗼𝗼𝗸𝗧𝗵𝗲𝗺𝗲 𝗣𝘁𝗲𝗿𝗼𝗱𝗮𝗰𝘁𝘆𝗹\033[0m";;
            11) echo -e "\033[1;34m11. 𝗜𝗻𝘀𝘁𝗮𝗹𝗹 𝗡𝗶𝗴𝗵𝘁𝗖𝗼𝗿𝗲 𝗧𝗵𝗲𝗺𝗲 𝗣𝘁𝗲𝗿𝗼𝗱𝗮𝗰𝘁𝘆𝗹\033[0m";;
            12) echo -e "\033[1;34m12. 𝗜𝗻𝘀𝘁𝗮𝗹𝗹 𝗣𝗵𝗽𝗠𝘆𝗔𝗱𝗺𝗶𝗻\033[0m";;
            13) echo -e "\033[1;34m13. 𝗞𝗲𝗹𝘂𝗮𝗿 𝗗𝗮𝗿𝗶 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗲𝗿\033[0m";;
        esac
        sleep 0.5
    done
}

handle_choice() {
    read -p "PILIH OPSI (1-12): " CHOICE
    case "$CHOICE" in
        1)
            fix_yarn
            ;;
        2)
            install_theme_enigma
            ;;
        3)
            install_billing_module
            ;;
        4)
            installThemeice
            ;;
        5)
            uninstall_theme
            ;;
        6)
            deletefilesptero
            ;;
        7)
            install_futuristic_theme
            ;;
        8)
            curl -s https://raw.githubusercontent.com/rainmc0123/rainmc0123/main/install2.sh -o /tmp/install2.sh
            source /tmp/install2.sh
            ;;
        9) 
           bash <(curl -s https://pterodactyl-installer.se)
           ;;

        10) 
             install_theme_nooktheme
            ;;
        11) 
             installnightcoretheme
            ;;
        12) 
            bash <(curl -s https://raw.githubusercontent.com/direc85/phpmyadmin-installer/master/phpmyadmin-installer.sh

        13)
            echo -e ${GREEN}"𝗔𝗡𝗗𝗔 𝗞𝗘𝗟𝗨𝗔𝗥 𝗗𝗔𝗥𝗜 𝗜𝗡𝗦𝗧𝗔𝗟𝗟𝗘𝗥 , 𝗧𝗘𝗥𝗜𝗠𝗔𝗞𝗔𝗦𝗜𝗛"${RESET}
            exit 0
            ;;
        *)
            echo -e ${RED}"Pilihan tidak Benar Silakan coba lagi"${RESET}
            ;;
    esac
}

check_license() {
    # Tambahkan logika untuk memeriksa lisensi disini
    true
}

install_software() {
    # Tambahkan logika untuk menginstal perangkat lunak disini
    true
}

display_message() {
    # Tambahkan logika untuk menampilkan pesan setelah instalasi selesai disini
    true
}

# Main program
if [ -f "$LICENSE_TIMESTAMP_FILE" ]; then
    LAST_TIMESTAMP=$(cat "$LICENSE_TIMESTAMP_FILE")
    CURRENT_TIMESTAMP=$(date +%s)
    let DIFF=($CURRENT_TIMESTAMP-$LAST_TIMESTAMP)/86400

    if [ $DIFF -ge 1 ]; then
        echo "Lisensi telah kadaluarsa, silakan masukkan kembali lisensi Anda:"
        read -r LICENSE_KEY
        echo "$LICENSE_KEY" > "$LICENSE_FILE"
        echo "$(date +%s)" > "$LICENSE_TIMESTAMP_FILE"
    else
        LICENSE_KEY=$(cat "$LICENSE_FILE")
    fi
else
    echo "𝗠𝗮𝘀𝘂𝗸𝗸𝗮𝗻 𝗟𝗶𝗰𝗲𝗻𝘀𝗲:"
    read -r LICENSE_KEY
    echo "$LICENSE_KEY" > "$LICENSE_FILE"
    echo "$(date +%s)" > "$LICENSE_TIMESTAMP_FILE"
fi

if check_license; then
    echo -e ${GREEN}"(𝗔𝗨𝗧𝗢𝗠𝗔𝗧𝗜𝗖) 𝗟𝗜𝗖𝗘𝗡𝗦𝗘 𝗕𝗘𝗡𝗔𝗥"${RESET}
    install_software
    display_message

    first_run=true

    while true
    do
        if [ "$first_run" == true ]; then
            show_menu "first"
            first_run=false
        else
            show_menu
        fi
        handle_choice
    done
else
    echo -e ${RED}"Lisensi tidak Benar Instalasi dibatalkan."${RESET}
    exit 1
fi
