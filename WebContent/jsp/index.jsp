<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery-1.7.2.min.js"></script>
<title>上海市义务教育阶段新生入学报名平台</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(function(){
           $(".regionListOne").mouseover(function(){
                 $("#"+this.id).append("<div class='regionListOnehover'><h4>填报开放时间</h4> <p>2014-03-10 8:00:00 至</p><p>2014-03-10 8:00:00 </p> </div>");
               }).mouseout(function(){$(".regionListOnehover").remove();});
               
               $(".regionListTwo").mouseover(function(){
                  // alert(this.id);
                 $("#"+this.id).append("<div class='regionListTwohover'><h4>填报开放时间</h4> <p>2014-03-10 8:00:00 至</p><p>2014-03-10 8:00:00 </p> </div>");
               }).mouseout(function(){$(".regionListTwohover").remove();});
               
                $(".regionListThree").mouseover(function(){
                  // alert(this.id);
                 $("#"+this.id).append("<div class='regionListThreehover'><h4>填报开放时间</h4></div>");
               }).mouseout(function(){$(".regionListThreehover").remove();});
                
                //双击操作
                $(".regionListOne").click(function(){
                    window.location.href = "${pageContext.request.contextPath}/readme.do";
                });
        });
</script>
</head>

<body>
<div class="logo">
    <div class="left" style="width:65%; padding-top:30px;"><a href="index.html"><img src="images/logo.png" width="598" height="33" /></a></div>
     <div class="right tool" >
     <p></p>
        <p><a href="#">新用户注册</a></p>
     </div>
</div>
<div class=" banner">
    <div class="bannerpic"></div>
    <div class="could"></div>
</div>
<div class="regionSelection">
    <div class="regionSelectionTitle">
    <h2>请选择您孩子报名学校所属区县进行报名</h2> 
    </div>
</div>
<div class="regionList">
    <ul>
        <li class="regionListOne" id="region1">黄浦区</li>
        <li class="regionListOne" id="region2">徐汇区</li>
        <li class="regionListOne" id="region3">长宁区</li>
        <li class="regionListOne" id="region4">静安区</li>
        <li class="regionListOne" id="region5">普陀区</li>
        <li class="regionListOne" id="region6">闸北区</li>
        <li class="regionListOne" id="region7">虹口区</li>
        <li class="regionListOne" id="region8">杨浦区</li>
        <li class="regionListOne" id="region9">闵行区</li>
        <li class="regionListOne" id="region10">宝山区</li>
        <li class="regionListOne" id="region11">嘉定区</li>
        <li class="regionListTwo" id="region12">浦东新区</li>
        <li class="regionListOne" id="region13">金山区</li>
        <li class="regionListOne" id="region14">松江区</li>
        <li class="regionListOne" id="region15">青浦区</li>
        <li class="regionListOne" id="region16">奉贤区</li>
        <li class="regionListOne" id="region17">崇明县</li>
        <li class="regionListOne" id="region18">监狱局</li>
        <li class="regionListOne" id="region19">梅山</li>
        <li class="regionListOne" id="region20">大屯</li>
        <li class="regionListThree" id="region21">张家洼</li>
    </ul>
    
</div>
<div style=" clear:both"></div>
<div class="news">
    <div class="left newsLeft">
        <div class="newsLtitle"><h2>公告信息</h2><span>更多>></span></div>
        <div class="newsLtitleli">
            <ul>
                <li>普通高中试点开设国际课程工作</li>
                <li>完善上海市普通高中学业水平考试制度</li>
                <li>普通高中试点开设国际课程工作</li>
                <li>完善上海市普通高中学业水平考试制度</li>
                <li>普通高中试点开设国际课程工作</li>
            </ul>
        </div>
    </div>
    <div class="left newsRight">
        <div class="newsRtitle"><h2>政策解读</h2><span>更多>></span></div>
        <div class="newsRtitleli">
            <ul>
                <li>普通高中试点开设国际课程工作</li>
                <li>完善上海市普通高中学业水平考试制度</li>
                <li>普通高中试点开设国际课程工作</li>
                <li>完善上海市普通高中学业水平考试制度</li>
                <li>普通高中试点开设国际课程工作</li>
            </ul>
        </div>
    </div>
</div>
<div class="bottom">
        <p>版权所有：上海电教馆</p>
        <p>技术支持：上海华东电脑股份有限公司</p>
    </div>
</body>
</html>
