"""
使用udp套接字完成
客户端循环输入单词，获取单词解释
服务端负责接搜单词，查询，将单词给客户端
"""
from socket import *
import socket
#创建套接字
sockfd=socket.socket(AF_INET,SOCK_DGRAM)

#端口立即重用
sockfd.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,True)
#绑定地址
server_addr=("127.0.0.1",8888)
sockfd.bind(server_addr)


def serch_world(word):
    # 打开文件
    f = open("dict.txt", "r")  # 默认r方式
    # 每次获取一行
    for line in f:
        w = line.split(" ")[0]  # 提取每一行的单词
        # 提高一点效率 如果遍历到的单词已经比目标大就没有必要继续乡下找了
        if w > word:
            f.close()
            return("没有找到该单词！")
        elif w == word:
            f.close()
            return line
    else:
        f.close()
        return ("没有找到该单词！")


#循环收发消息
while True:
    data,addr=sockfd.recvfrom(1024)
    print("收到",addr,"消息：",data.decode())
    result=serch_world(data.decode())
    sockfd.sendto(result.encode(),addr)

#关闭套接字
sockfd.close()