package com.shecc.cloud.app.service.Impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shecc.cloud.app.dao.BankLogMapper;
import com.shecc.cloud.app.model.Log;
import com.shecc.cloud.app.service.CommonService;

@Service("CommonService")
public class CommonServiceImpl implements CommonService {
    @Autowired
    private BankLogMapper bankLogMapper;

    @Override
    public List<Log> getLogs(String optAccount, String optClass,
            String optGrade, String optInfo, Date startTime, Date endTime,
            int page, int rows) {
        return bankLogMapper.getLogs(optAccount, optClass, optGrade, optInfo,
                startTime, endTime, (page - 1) * rows + 1, rows);
    }

    @Override
    public Long getLogCount(String optAccount, String optClass,
            String optGrade, String optInfo, Date startTime, Date endTime) {
        return bankLogMapper.getLogCount(optAccount, optClass, optGrade, optInfo,
                startTime, endTime);
    }
}
