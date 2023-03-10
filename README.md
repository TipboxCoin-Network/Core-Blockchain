# Tipboxcoin Network

[![N|Solid](https://faucet.tipboxcoin.net/assets/img/logo.png)](https://tipboxcoin.net)



[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://tipboxcoin.net)

## Instructions to setup Validator node

`Tipboxcoin Validator Node` is very easy to install and deploy in a Docker container. This requires [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/) to run. 

### Step 1: Install Docker
```sh
sudo apt install docker && sudo apt install docker-compose
```

### Step 2: Clone the Github repository

```sh
git clone https://github.com/TipboxCoin-Network/Core-Blockchain.git
```

### Step 3: Navigate into the directory where you've cloned this repository

```sh
cd Core-Blockchain/
```

### Step 4: Add your wallet's address, private key and password to docker-compose.yml file
There are `environment` & `args` on the line number 5 & 12 respectively, There are fields in `key: value` format
Simply copy paste your values save the file. 

- Open the docker-compose.yml file `nano docker-compose.yml` or you can use any other editor as well.
- Find the code snippet shown as below and add your wallet's private key and the password. 
- To paste in the `nano` editor you'll need to use this keyboard shortcut - `ctrl + shift + v`
- Now to save and exit from `nano` editor please do it this way - `ctrl + x`, press `y` and just hit `enter`

( ***For MAC users please use cmd instead of ctrl*** )

#### sample snippets
Add your wallet address in the environment as shown below
```
environment:
      address=921343c8cfW30d8caa70488884d532Ece203c045
```

then add the private key and the password as shown below
```
args:
        privatekey: f8fe0Fff5189aYYfd61fY753e8064E4fd6e6f8617b25MdcD7b4bD724f26f5
        password: 123456
```

### Step 5: Run the docker composer

```sh
sudo docker-compose up --build
```

Now wait for the docker image to be built and up...

### Step 6: Add peer
When the building process done successfully and the validator prompt running then you'll have to add the peer
as shown below. Get the enode and use it here.

```
admin.addPeer("enode://1d9e66b334ae2d9460cdcc637c82f6f44744b3c04827cb8bc7a8b629ae358d3eeb4512fd0d32d055d410b5f779e5cff5810f70cf1a52e5dfa692268264534d72@194.31.87.219:32668")
```

You can directly paste in the running terminal using `ctrl + v` or `cmd + v` (for mac) and hit `enter`
And that's all.

### Step 7: 
Go to https://staking.tipboxcoin.net. Click on "Click here to apply", fill in the info and submit. While Submitting transaction, edit gas fee & set to 1000 gwei.

### Step 8: 
Load up Validators.sol system contract in remix IDE. Call "stake()" with a msg.value of 32 ether(TPBX). Edit gas fee to 1000 gwei.
