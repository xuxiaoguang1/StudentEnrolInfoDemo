package com.shecc.cloud.app.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Properties;

import com.shecc.cloud.app.bean.LogSettingBean;

/**
 * 根据提供的信息产生properties文件
 * 
 */
public class FileUtil {
    public static void createLog4jPropertis(LogSettingBean bean)
            throws URISyntaxException, IOException {
        Properties prop = new Properties();
        File file = new File(FileUtil.class.getClassLoader()
                .getResource("log4j.properties").toURI());
        FileOutputStream fos = new FileOutputStream(file);

    }
}
