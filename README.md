# Shell Script - Lean LEMP Setup

This project contains a shell script for installing Lean LEMP stack. It is assumed that the base Linux install is generic in nature.

This project can serve as a automated setup for basic working web server which would help newbies to setup their server on the fly.

# Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
- [Code of Conduct](#code-of-conduct)
- [Contributions](#contributions)
- [License](#license)
- [History](#history)
- [Credits](#credits)


## Features

- A configurable shell script which may be helpful at places and specially for those newbies who are troubled in installing basic web server.
- This shell script installs the following web components or software through automatation:
  1. nginx light-weight HTTP server
  2. PHP 7.0 processor
  3. MariaDB - A database management software, based on a community forked MySQL.
  4. cURL - a tool to transfer data from various protocols
  5. Git - A tool to create, fork or manage github repositories.

## Requirements

1. Any working Linux setup. This script was created and tested on Ubuntu 14.04 LTS.

## Usage

`ssh` to your server or VM.

First, let's use following wget command to download the monitor script "lemp1.sh" and make it executable by setting appropriate permissions.

     wget https://raw.githubusercontent.com/muzikmyth/Bash-Script-for-LEMP-Server-Setup/master/lemp1.sh
     chmod 755 lemp1.sh
      
It is strongly advised to install the script as root. It will ask for root password and will install the necessary components at required places.
      
After installation, you can run the script by calling the bash script. 

    # ./Path/to/script/lemp1.sh
    
## Code of Conduct

You are free to use/modify/redistribute the below piece of code by giving proper credit to the author.

## License

Please note that this project is released with a MIT License.

## Credits

Developed by [Abhijit Kumar](https://abhijitkrm.site). Connect to me at abk@abhijitkrm.site


