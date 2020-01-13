# Checking LES source code under Linux
## Run sonar scanner
 
#### Download scanner
  ```bash
  wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip
  unzip sonar-scanner-cli-3.2.0.1227-linux.zip
  ```
####  Extend memory 
  ```bash
  export SONAR_SCANNER_OPTS="-Xmx512m"
  ```
#### Rename folder
  ```bash
  mv sonar-scanner-3.2.0.1227-linux/ /sonar-scaner/
  cd sonar-scanner/
  mv /sonar-scaner/ /root/sonar-scanner
  ```
#### Place soure code
  ```bash
  cp conf/sonar-scanner.properties /root/addressbook-master
  ```
#### Edit sonar config: add server, passwords. API keys
  ```bash
  nano /root/addressbook-master/sonar-scanner.properties
  ```
#### For ex. sonar-scanner.properties - configuration file:
  ```bash
  #Configure here general information about the environment, such as SonarQube server connection details for example
  #No information about specific project should appear here
  #sonar.login=[admin username or API token]``
  #sonar.password=[your pass]``
  sonar.login=[fd7dc3670738e7f29fb88d8e5fff9d2552638d02]``
  sonar.sources=.``
  #Configure here general information about the environment, such as SonarQube server connection details for example
  #No information about specific project should appear here``
  #----- Default SonarQube server
  sonar.host.url=http://35.225.75.105
  sonar.projectKey=LES
  sonar.projectName=LES
  sonar.projectVersion=2.0
  #----- Default source code encoding
  sonar.sourceEncoding=UTF-8
  ```
#### Change directory to folder with rhe source code
  ```bash
  cd /root/addressbook-master/
  ```
#### Install curl
  ```bash
  sudo apt install curl
  ```
#### Install nodejs latest
  ```bash
  curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
  apt-get install -y nodejs
  apt-get install -y build-essential
  apt-get install -y npm``  
  npm install -g typescript
  ```
#### Run scanner in Debug mode
  ```bash
  sonar-scanner/bin/sonar-scanner -X
  ```
