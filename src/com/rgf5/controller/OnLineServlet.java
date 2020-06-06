package com.rgf5.controller;

import java.io.IOException;
import java.util.Vector;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

/**
 * 指定一个URI，客户端可以通过指定的URI来连接到我们的websocket
 */
@ServerEndpoint("/OnLineServlet")
public class OnLineServlet {

    /**
     * 当前的会话对象，服务器端可以通过这个向客户端发送消息
     */
    private Session session;

    /**
     * 线程安全的集合Vector，因为它的每个方法都带有一个同步锁
     */
    public static Vector<OnLineServlet> clients = new Vector<>();

    /**
     * 当客户端和服务端建立连接时触发的方法
     * @param session 当前会话对象
     */
    @OnOpen
    public void onOpen(Session session){
        System.out.println("一个客户正在连接。。。。");
        this.session = session;
        //将当前的客户端放入用户列表
        clients.add(this);
    }

    /**
     * 退出直播间
     */
    @OnClose
    public void onClose(){
        System.out.println("一个客户退出连接。。。。");
        //断开连接就移除掉
        clients.remove(this);
    }


    /**
     * 当客户端发送消息时触发
     * @param message 要发送的消息
     * @param session 发消息的会话对象
     */
    @OnMessage
    public void onMessage(String message,Session session){
        //当一个客户端发送消息了，应该让所有的客户都知道
        for(OnLineServlet client : clients){
            try {
                client.session.getBasicRemote().sendText(message);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}
