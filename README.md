# 钱包服务keosd的作用  
存储私钥，签名交易

# 镜像  
docker pull boscore/bos:v3.0.4

有多个版本可选，都可以，选择最高的版本就可以了。

# 安装  
## docker 方式  
### 安装：  
修改配置文件config：镜像，服务地址，存储目录  
执行setup.sh  
### 操作：  
stop.sh 停止  
start.sh 启动  
unlock.sh 打开并解锁默认钱包default  
walletpwd.sh 查看钱包密码  
## k8s方式  
### 启动命令  

```
keosd --data-dir /data/keosd/data-dir --http-server-address $HTTP_SERVER_ADDRESS --http-validate-host false --unlock-timeout 9999999
```
--http-server-address ：钱包服务监听地址，如0.0.0.0:3923  
--data-dir: 数据存储目录。  
--http-validate-host：是否验证主机地址  
--unlock-timeout： 钱包解锁后多久自动关闭。  

### 钱包操作命令

```
[root@eos.demo node]$cleos --wallet-url http:localhost:3923 wallet 
ERROR: RequiredError: Subcommand required
Interact with local wallet
Usage: cleos wallet SUBCOMMAND

Subcommands:
  create                      Create a new wallet locally
  open                        Open an existing wallet
  lock                        Lock wallet
  lock_all                    Lock all unlocked wallets
  unlock                      Unlock wallet
  import                      Import private key into wallet
  remove_key                  Remove key from wallet
  create_key                  Create private key within wallet
  list                        List opened wallets, * = unlocked
  keys                        List of public keys from all unlocked wallets.
  private_keys                List of private keys from an unlocked wallet in wif or PVT_R1 format.
  stop                        Stop keosd.
```


需要注意的是：  
- 钱包首次启动的时候，没有任何钱包存在，需要创建。  
- create一个钱包后，需要open和unlock之后才能使用。  
- 钱包打开后可以导入私钥。  
- 创建钱包时，会自动产生一个钱包密码，需要记下这个钱包密码，解锁钱包要用到这个密码。  
- 查看私钥需要钱包密码。  



