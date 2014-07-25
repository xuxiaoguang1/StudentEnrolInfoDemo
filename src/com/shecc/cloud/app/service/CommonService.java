package com.shecc.cloud.app.service;

import java.util.Date;
import java.util.List;

import com.shecc.cloud.app.model.Log;

public interface CommonService {
    List<Log> getLogs(String optAccount, String optClass, String optGrade,
            String optInfo, Date startTime, Date endTime, int page, int rows);

    Long getLogCount(String optAccount, String optClass, String optGrade,
            String optInfo, Date startTime, Date endTime);
}
