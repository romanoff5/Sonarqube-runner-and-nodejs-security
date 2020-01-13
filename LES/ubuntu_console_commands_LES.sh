wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip
unzip sonar-scanner-cli-3.2.0.1227-linux.zip 
cd sonar-scanner-3.2.0.1227-linux/
nano ./conf/sonar-scanner.properties 
export SONAR_SCANNER_OPTS="-Xmx512m"
//rename
mv sonar-scanner-3.2.0.1227-linux/ /sonar-scaner/
cd sonar-scanner/
mv /sonar-scaner/ /root/sonar-scanner
cd ./sonar-scanner
nano conf/sonar-scanner.properties 
//place soure code
cp conf/sonar-scanner.properties /root/addressbook-master/
//edit sonar config: add server, passwords, API keys
nano /root/addressbook-master/sonar-scanner.properties
//change directory to folder with rhe source code
cd /root/addressbook-master/
//install culr
sudo apt install curl
//install nodejs latest
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo apt-get install -y npm
npm install -g typescript
//run scanner in Debug mode
sonar-scanner/bin/sonar-scanner -X
