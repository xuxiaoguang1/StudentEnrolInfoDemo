package com.shecc.cloud.app.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shecc.cloud.app.model.Log;

public interface BankLogMapper {

    List<Log> getLogs(@Param(value = "optAccount") String optAccount,
            @Param(value = "optClass") String optClass,
            @Param(value = "optGrade") String optGrade,
            @Param(value = "optInfo") String optInfo,
            @Param(value = "startTime") Date startTime,
            @Param(value = "endTime") Date endTime,
            @Param(value = "start") int start, @Param(value = "end") int end);

    Long getLogCount(@Param(value = "optAccount") String optAccount,
            @Param(value = "optClass") String optClass,
            @Param(value = "optGrade") String optGrade,
            @Param(value = "optInfo") String optInfo,
            @Param(value = "startTime") Date startTime,
            @Param(value = "endTime") Date endTime);
}
