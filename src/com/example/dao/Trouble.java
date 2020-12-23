package com.example.dao;

public class Trouble {
    private String id;
    private String content;
    private  String bianyi;

    public Trouble(String id, String content, String bianyi) {
        this.id = id;
        this.content = content;
        this.bianyi = bianyi;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getBianyi() {
        return bianyi;
    }

    public void setBianyi(String bianyi) {
        this.bianyi = bianyi;
    }

    @Override
    public String toString() {
        return "trouble{" +
                "Bug问题='" + content + '\'' +
                ", 编译器='" + bianyi + '\'' +
                '}';
    }
}
