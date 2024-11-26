package com.example.web.config;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Config {
    private static Properties properties = new Properties();

    static {
        try (InputStream input = Config.class.getClassLoader().getResourceAsStream("config.properties")) {
            if (input == null) {
                System.out.println("Sorry, unable to find config.properties");
            }
            // 加载属性文件
            properties.load(input);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    public static String getDatabaseURL() {
        return properties.getProperty("db.url");
    }

    public static String getDatabaseUser() {
        return properties.getProperty("db.user");
    }

    public static String getDatabasePassword() {
        return properties.getProperty("db.password");
    }

    public static String getAppName() {
        return properties.getProperty("app.name");
    }

    public static String getAppVersion() {
        return properties.getProperty("app.version");
    }
}
