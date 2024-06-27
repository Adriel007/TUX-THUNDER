install dsniff, ettercap
### 3. **Forense**
- **Ferramentas**: The Sleuth Kit (TSK), Autopsy (CLI tools), Volatility, FTK Imager CLI

```sh
tce-load -wi sleuthkit
# Autopsy CLI não está disponível no repositório oficial do Tiny Core.
# Volatility requer instalação manual:
tce-load -wi python
wget https://github.com/volatilityfoundation/volatility/archive/refs/tags/2.6.tar.gz
tar xvf 2.6.tar.gz
cd volatility-2.6
python setup.py install
# FTK Imager CLI requer download manual do site oficial.
```

### 4. **OSINT**
- **Ferramentas**: theHarvester, Recon-ng, Shodan CLI, Maltego (scripts)

```sh
tce-load -wi python
pip install theHarvester
pip install recon-ng
pip install shodan
# Maltego scripts podem ser usados conforme a documentação.
```

### 5. **Penetração Web**
- **Ferramentas**: Burp Suite (tem CLI limited), OWASP ZAP (CLI), Nikto, sqlmap

```sh
# Burp Suite deve ser baixado manualmente do site oficial.
tce-load -wi openjdk
wget https://github.com/zaproxy/zaproxy/releases/download/v2.11.1/ZAP_2_11_1_unix.sh
chmod +x ZAP_2_11_1_unix.sh
./ZAP_2_11_1_unix.sh
tce-load -wi nikto
tce-load -wi python
pip install sqlmap
```

### 6. **Análise de Malware**
- **Ferramentas**: Ghidra (CLI mode for batch analysis), Radare2, Cuckoo Sandbox, YARA

```sh
# Ghidra deve ser baixado manualmente do site oficial.
tce-load -wi radare2
tce-load -wi python
# Cuckoo Sandbox requer várias dependências:
pip install -U cuckoo
pip install yara-python
# YARA requer download e compilação:
wget https://github.com/VirusTotal/yara/archive/v4.1.1.tar.gz
tar xvf v4.1.1.tar.gz
cd yara-4.1.1
./bootstrap.sh
./configure
make
sudo make install
```

### 7. **Engenharia Reversa**
- **Ferramentas**: IDA Pro (CLI limited), Ghidra (CLI mode), Radare2, Binary Ninja (CLI limited)

```sh
# IDA Pro e Binary Ninja devem ser baixados manualmente dos sites oficiais.
# Ghidra deve ser baixado manualmente do site oficial.
tce-load -wi radare2
```

### 8. **Teste de Penetração em Redes**
- **Ferramentas**: Nmap, Metasploit Framework (CLI), Aircrack-ng, Responder

```sh
tce-load -wi nmap
# Metasploit Framework requer instalação manual:
curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfupdate | sh
tce-load -wi aircrack-ng
# Responder requer instalação manual:
git clone https://github.com/lgandx/Responder
cd Responder
pip install -r requirements.txt
```

### 9. **Criptografia e Esteganografia**
- **Ferramentas**: GnuPG, VeraCrypt (CLI), OpenSSL, Steghide

```sh
tce-load -wi gnupg
# VeraCrypt requer download manual:
wget https://launchpad.net/veracrypt/trunk/1.24-update7/+download/veracrypt-1.24-Update7-console-x64.tar.gz
tar xvf veracrypt-1.24-Update7-console-x64.tar.gz
sudo ./veracrypt-1.24-Update7-setup-console-x64
tce-load -wi openssl
# Steghide requer download e compilação:
wget http://steghide.sourceforge.net/download/steghide-0.5.1.tar.gz
tar xvf steghide-0.5.1.tar.gz
cd steghide-0.5.1
./configure
make
sudo make install
```

### 10. **Análise de Logs e SIEM**
- **Ferramentas**: ELK Stack (Elasticsearch, Logstash, Graylog (CLI), Splunk (CLI), AlienVault OSSIM

```sh
# ELK Stack requer instalação manual de cada componente.
# Elasticsearch:
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.10.1-linux-x86_64.tar.gz
tar xvf elasticsearch-7.10.1-linux-x86_64.tar.gz
cd elasticsearch-7.10.1
./bin/elasticsearch
# Logstash:
wget https://artifacts.elastic.co/downloads/logstash/logstash-7.10.1-linux-x86_64.tar.gz
tar xvf logstash-7.10.1-linux-x86_64.tar.gz
cd logstash-7.10.1
./bin/logstash
# Graylog:
wget https://downloads.graylog.org/releases/graylog-3.3/graylog-3.3.tgz
tar xvf graylog-3.3.tgz
cd graylog-3.3
./bin/graylog
# Splunk requer download manual do site oficial.
# AlienVault OSSIM requer instalação manual.
```

### 11. **Pentesting de Aplicações Móveis**
- **Ferramentas**: MobSF (CLI mode), Frida, Drozer, APKTool

```sh
# MobSF requer download e configuração manual:
git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF
cd Mobile-Security-Framework-MobSF
./setup.sh
# Frida:
pip install frida-tools
# Drozer requer download e configuração manual:
wget https://github.com/FSecureLABS/drozer/releases/download/2.4.4/drozer-2.4.4-py3-none-any.whl
pip install drozer-2.4.4-py3-none-any.whl
# APKTool:
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.5.0.jar
mv apktool_2.5.0.jar /usr/local/bin/apktool.jar
echo -e '#!/bin/sh\njava -jar /usr/local/bin/apktool.jar "$@"' > /usr/local/bin/apktool
chmod +x /usr/local/bin/apktool
```

### 12. **Análise de Tráfego de Rede**
- **Ferramentas**: ntopng (CLI), NetFlow Analyzer (CLI), SolarWinds NPM (CLI), Wireshark (CLI: tshark)

```sh
# ntopng requer instalação manual:
wget https://packages.ntop.org/apt-stable/16.04/all/ntopng_3.2.171012-1115_amd64.deb
sudo dpkg -i ntopng_3.2.171012-1115_amd64.deb
# NetFlow Analyzer, SolarWinds NPM requerem download manual do site oficial.
tce-load -wi wireshark-cli
```

### 13. **Análise de Vulnerabilidades em IoT**
- **Ferramentas**: Firmalyzer (CLI mode), Binwalk, RIOT OS, IoT Inspector

```sh
# Firmalyzer requer download e configuração manual.
tce-load -wi binwalk
# RIOT OS requer download e configuração manual.
# IoT Inspector requer download e configuração manual.
```

### 14. **Teste de Penetração em Infraestruturas de Cloud**
- **Ferramentas**: Pacu, CloudMapper, Steampipe, ScoutSuite

```sh
# Pacu:
pip install pacu
# CloudMapper:
git clone https://github.com/duo-labs/cloudmapper
cd cloudmapper
pip install -r requirements.txt
# Steampipe:
tce-load -wi curl
curl -L https://github.com/turbot/steampipe/releases/download/v0.7.1/steampipe_0.7.1_linux_amd64.tar.gz -o steampipe.tar.gz
tar -xvf steampipe.tar.gz
sudo mv steampipe /usr/local/bin/
# ScoutSuite:
pip install scoutsuite
```

### 15. **Segurança de Redes Sem Fio**
- **Ferramentas**: Aircrack-ng, Kismet (CLI), Reaver, WiFi Pineapple

```sh
tce-load -wi aircrack-ng
tce-load -wi kismet
# Reaver:
wget https://github.com/t6x/reaver-wps-fork-t6x/archive/master.zip
unzip master.zip
cd reaver-wps-fork-t6x-master/src
./configure
make
sudo make install
# WiFi Pineapple requer hardware específico.
```

### 16. **Engenharia Social**
- **Ferramentas**: SET (Social-Engineer Toolkit), King Phisher, GoPhish, Maltego (scripts)

```sh
# SET:
git clone https://github.com/trustedsec/social-engineer-toolkit/ set/
cd set
pip install -r requirements.txt
# King Phisher:
pip install king-phisher
# GoPhish:
wget https://github.com/gophish/gophish/releases/download/v0.11.0/gophish-v0.11.0-linux-64bit.zip
unzip gophish-v0.11.0-linux-64bit.zip
cd gophish-v0.11.0-linux-64bit
./gophish
# Maltego scripts requerem configuração manual.
```
