#!/usr/bin/python
from socket import *
from time import ctime

HOST='127.0.0.1'
PORT=12002
BUFSIZ=1024
ADDR=(HOST,PORT)
tcpSerSock=socket(AF_INET,SOCK_STREAM)
tcpSerSock.bind(ADDR)
tcpSerSock.listen(5)
while True:
    print 'waiting for connection .....'
    tcpCliSock,addr=tcpSerSock.accept()
    print 'connected from:',addr
    while 1:
        data = tcpCliSock.recv(BUFSIZ)
        print data
        if not data:
            break
        tcpCliSock.send('test')
        tcpCliSock.close()
        tcpSerSock.close()
