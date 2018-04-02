#!/bin/bash

# 编译站点
mvn clean package;

# 拷贝jar包
cp -rf /home/github/spring-boot-blog/target/blog-1.0.3.jar /root

# 拷贝sh脚本
cp -rf /home/github/spring-boot-blog/doc/script/startup.sh /root
cp -rf /home/github/spring-boot-blog/doc/script/shutdown.sh /root

# 停止站点
sh /root/shutdown.sh

# 启动站点
sh /root/startup.sh