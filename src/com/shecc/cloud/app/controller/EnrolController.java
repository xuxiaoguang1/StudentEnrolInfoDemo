package com.shecc.cloud.app.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shecc.cloud.app.bean.GridBean;
import com.shecc.cloud.app.bean.LogSettingBean;
import com.shecc.cloud.app.model.Log;
import com.shecc.cloud.app.service.CommonService;
import com.shecc.cloud.app.utils.FileUtil;
import com.shecc.cloud.app.utils.RandomValidateCode;

@Controller
@RequestMapping("/enrol")
public class EnrolController {
    @Autowired
    private CommonService commonService;

    @RequestMapping(value = "/loadCotent")
    public String loadAccordinPanel(@RequestParam String id,
            HttpServletRequest request) {
        if (id.equals("logSetting")) {
            // return "log/logStore";
            return "log1/logSetting";
        } else if (id.equals("logSearch")) {
            // return "log/logSearching";
            return "log1/logSearching";
        }
        return null;
    }

    @RequestMapping(value = "/getLogs", method = RequestMethod.GET)
    public @ResponseBody
    GridBean<Log> getLogs(
            @RequestParam(value = "optAccount", required = false) String optAccount,
            @RequestParam(value = "optClass", required = false) String optClass,
            @RequestParam(value = "optGrade", required = false) String optGrade,
            @RequestParam(value = "optInfo", required = false) String optInfo,
            @RequestParam(value = "startTime", required = false) String startTime,
            @RequestParam(value = "endTime", required = false) String endTime,
            @RequestParam int page, @RequestParam int rows,
            HttpServletRequest request) {
        GridBean<Log> gridBean = new GridBean<Log>();
        Date dateStartTime = null;
        Date dateEndTime = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        if (startTime != null && !"".equals(startTime.trim())) {
            try {
                dateStartTime = sdf.parse(startTime);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        if (endTime != null && !"".equals(endTime.trim())) {
            try {
                dateStartTime = sdf.parse(endTime);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        if ("".equals(optAccount) || null == optAccount) {
            optAccount = null;
        } else {
            try {
                optAccount = URLDecoder.decode(optAccount, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        if ("".equals(optClass) || null == optClass) {
            optClass = null;
        } else {
            try {
                optClass = URLDecoder.decode(optClass, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        if ("".equals(optGrade) || "all".equals(optGrade)) {
            optGrade = null;
        }
        if ("".equals(optInfo) || null == optInfo) {
            optInfo = null;
        } else {
            try {
                optInfo = URLDecoder.decode(optInfo, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        Long total = commonService.getLogCount(optAccount, optClass, optGrade,
                optInfo, dateStartTime, dateEndTime);
        List<Log> logs = commonService.getLogs(optAccount, optClass, optGrade,
                optInfo, dateStartTime, dateEndTime, page, rows);

        gridBean.setRows(logs);
        gridBean.setTotal(total);

        return gridBean;
    }

    @RequestMapping(value = "/imageServlet")
    public void validationCode(Model model, HttpServletRequest request,
            HttpServletResponse response) {
        RandomValidateCode randomValidateCode = new RandomValidateCode();
        try {
            randomValidateCode.getRandcode(request, response);// 杈撳嚭鍥剧墖鏂规硶
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/createLog4jProperties", method = RequestMethod.POST)
    public @ResponseBody
    String[] createLog4jProperties(Model model,
            @ModelAttribute LogSettingBean bean, HttpServletRequest request,
            HttpServletResponse response) {
        try {
            FileUtil.createLog4jPropertis(bean);
        } catch (URISyntaxException | IOException e) {
            e.printStackTrace();
        }
        String[] errors = new String[20];
        return errors;
    }
}
