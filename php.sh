update_packages()
{
    #upgrading the packages 
    sudo apt-get update
    sudo apt-get upgrade 
}

php_repository()
{
    #adding the php repository
    sudo apt install software-properties-common
    sudo add-apt-repository ppa:ondrej/php
    sudo apt update
}

php_8.1()
{
    #php 8.1
    echo "[+] PHP 8.1 Installation Started"
    sudo apt-get install php8.1 php8.1-fpm
    sudo apt-get install php8.1-mysql php8.1-mbstring php8.1-xml php8.1-gd php8.1-curl
    echo "[+] PHP 8.1 Installation Completed"
}

php_8.0()
{
    #php 8.0
    echo "[+] PHP 8.0 Installation Started"
    sudo apt-get install php8.0 php8.0-fpm
    sudo apt-get install php8.0-mysql php8.0-mbstring php8.0-xml php8.0-gd php8.0-curl
    echo "[+] PHP 8.1 Installation Completed"
}

php_7.4()
{
    #php 7.4
    echo "[+] PHP 7.4 Installation Started"
    sudo apt-get install php7.4 php7.4-fpm
    sudo apt-get install php7.4-mysql php7.4-mbstring php7.4-xml php7.4-gd php7.4-curl
    echo "[+] PHP 7.4 Installation Completed"
}

php_7.3()
{
    #php 7.3
    echo "[+] PHP 7.3 Installation Started"
    sudo apt-get install php7.3 php7.3-fpm
    sudo apt-get install php7.3-mysql php7.3-mbstring php7.3-xml php7.3-gd php7.3-curl
    echo "[+] PHP 7.3 Installation Completed"
}

php_7.2()
{
    #php 7.2
    echo "[+] PHP 7.2 Installation Started"
    sudo apt-get install php7.2 php7.2-fpm
    sudo apt-get install php7.2-mysql php7.2-mbstring php7.2-xml php7.2-gd php7.2-curl
    echo "[+] PHP 7.2 Installation Completed"
}

php_7.1()
{
    #php 7.1
    echo "[+] PHP 7.1 Installation Started"
    sudo apt-get install php7.1 php7.1-fpm
    sudo apt-get install php7.1-mysql php7.1-mbstring php7.1-xml php7.1-gd php7.1-curl
    echo "[+] PHP 7.1 Installation Completed"
}

php_5.6()
{
    #php 5.6
    echo "[+] PHP 5.6 Installation Started"
    sudo apt-get install php5.6 php5.6-fpm
    sudo apt-get install php5.6-mysql php5.6-mbstring php5.6-xml php5.6-gd php5.6-curl
    echo "[+] PHP 5.6 Installation Completed"
}

change_php()
{
    #to change the php version
    sudo update-alternatives --config php

}

option_manager()
{
    #manage options
    echo "[*] Select Option : "
    read option_name
    if [ $option_name == 100 ]; then

                update_packages
        fi
    if [ $option_name == 1 ]; then

                php_repository
        fi
    if [ $option_name == 2 ]; then
               php_8.1
        fi
    if [ $option_name == 3 ]; then

                php_8.0
        fi
    if [ $option_name == 4 ]; then

                php_7.4
        fi
    if [ $option_name == 5 ]; then

                php_7.3
        fi
    if [ $option_name == 6 ]; then

                php_7.2
        fi
    if [ $option_name == 7 ]; then

                php_7.1
        fi
    if [ $option_name == 8 ]; then

                php_5.6
        fi
    if [ $option_name == 9 ]; then

                change_php
        fi
    echo "[*] Continue ( Y/N )"
        read  continue_option
    if [ $continue_option == 'Y' ]; then

                main
        fi
    
}
label()
{

    clear
    echo '  _____  _    _ _____        ____           _____ _    _ '
    echo ' |  __ \| |  | |  __ \      |  _ \   /\    / ____| |  | |'
    echo ' | |__) | |__| | |__) |_____| |_) | /  \  | (___ | |__| |'
    echo ' |  ___/|  __  |  ___/______|  _ < / /\ \  \___ \|  __  |'
    echo ' | |    | |  | | |          | |_) / ____ \ ____) | |  | |'
    echo ' |_|    |_|  |_|_|          |____/_/    \_\_____/|_|  |_|'
    echo ''
    echo ''
}

main()
{
    label
    echo "Current PHP Version"
    php -r "echo substr(phpversion(),0,3);"
    
    echo ""
    echo ""
    echo "[100] Update packages"
    echo "[1] Add PHP repository"
    echo "[2] Install PHP 8.1"
    echo "[3] Install PHP 8.0"
    echo "[4] Install PHP 7.4"
    echo "[5] Install PHP 7.3"
    echo "[6] Install PHP 7.2"
    echo "[7] Install PHP 7.1"
    echo "[8] Install PHP 5.6"
    echo "[9] Set the php version"
    option_manager  
        
}
main

