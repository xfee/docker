# Docker 配置文件

## Request

- 安装`docker`以及`docker-compose`。

## 使用说明

### 1、克隆仓库到本地

```shell
git clone https://github.com/xfee/docker.git
```

### 2、编辑`docker-compose.yml`文件的内容

```shell
vi docker/docker-compose/docker-compose.yml

# 2.1、修改 nginx和php两个容器的主机端的共享目录（本例子为~/workspace/wwwroot）为自己的目录，本实例主机根目录为
~/workspace/wwwroot

# 2.2、若本地80和3306端口被占用，可以修改为别的端口
```



### 3、修改nginx配置文件

```shell
# 修改nginx/etc-nginx/conf.d中的nginx配置文件，配置网站。
```



### 4、启动docker-compose

```shell
docker-compose up -d
```



