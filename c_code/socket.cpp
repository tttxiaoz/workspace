#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <arpa/inet.h>

int main()
{
    // 1. 创建用于监听的套接字
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    if(fd == -1)
    {
        perror("socket");
        exit(0);
    }

    // 2. 绑定
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;  // ipv4
    addr.sin_port = htons(8989);   // 字节序应该是网络字节序
    //inet_pton(AF_INET, "127.0.0.1", &addr.sin_addr.s_addr);
    addr.sin_addr.s_addr =  INADDR_ANY; // == 0, 获取IP的操作交给了内核
    int ret = bind(fd, (struct sockaddr*)&addr, sizeof(addr));
    if(ret == -1)
    {
        perror("bind");
        exit(0);
    }

    // 3.设置监听
    ret = listen(fd, 100);
    if(ret == -1)
    {
        perror("listen");
        exit(0);
    }

    // 4. 等待, 接受连接请求
    struct sockaddr_in addrCli;
    int len = sizeof(addrCli);
    int connfd = accept(fd, (struct sockaddr*)&addrCli, &len);
    if(connfd == -1)
    {
        perror("accept");
        exit(0);
    }

    // 通信
    while(1)
    {
        // 读数据
        char recvBuf[1024];
        // 如果客户端没有发送数据, 默认阻塞
        read(connfd, recvBuf, sizeof(recvBuf));
        printf("recv buf: %s\n", recvBuf);
        // 写数据
        write(connfd, recvBuf, strlen(recvBuf));
    }

    // 释放资源
    close(fd);  // 监听
    close(connfd);  // 通信

    return 0;
}
