<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>登陆页面</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="apple-mobile-web    -app-capable" content="yes"/>
    <link href="${pageContext.request.contextPath}/resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/axure_rp_page.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/登陆页面_1_files/axurerp_pagespecificstyles.css" type="text/css" rel="stylesheet">
<!--[if IE 6]>
    <link href="${pageContext.request.contextPath}/登陆页面_1_files/axurerp_pagespecificstyles_ie6.css" type="text/css" rel="stylesheet">
<![endif]-->
    <script src="${pageContext.request.contextPath}/js/jquery/jquery1.9.js"></script>
	<script type="text/javascript">
	    var context = "${pageContext.request.contextPath}";
	</script>
</head>
<body>
<div id="main_container">

<div id="u0" class="u0_container"   >
<div id="u0_img" class="u0_normal detectCanvas"></div>
<div id="u1" class="u1" style="visibility:hidden;"  >
<div id="u1_rtf"></div>
</div>
</div>
<div id="u2" class="u2_container"   >
<div id="u2_img" class="u2_normal detectCanvas"></div>
<div id="u3" class="u3" style="visibility:hidden;"  >
<div id="u3_rtf"></div>
</div>
</div>
<div id="u4" class="u4"  >
<div id="u4_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">学生身份证</span><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">证件类型</span></p></div>
</div>
<SELECT id="u5" class="u5"   >
<OPTION selected value="id">身份证</OPTION>
<OPTION  value="hkid">香港特区身份证</OPTION>
<OPTION  value="moid">澳门特区身份证</OPTION>
<OPTION  value="twid">台湾居民来往大陆通行证</OPTION>
<OPTION  value="passport">护照</OPTION>
<OPTION  value="aboardid">境外永久居住证</OPTION>
</SELECT>

<div id="u6" class="u6"  >
<div id="u6_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">学生身份证件</span><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">件号码</span></p></div>
</div>
<INPUT id="id_no" type=text value="" class="u7" data-label="S"    >

<div id="u8" class="u8"  >
<div id="u8_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">密码</span></p></div>
</div>
<INPUT id="u9" type=text value="" class="u9"     >

<div id="u10" class="u10"  >
<div id="u10_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">验证码</span></p></div>
</div>
<INPUT id="u11" type=text value="" class="u11"     >

<div id="u12" class="u12_container"   >
<div id="u12_img" class="u12_normal detectCanvas"></div>
<div id="u13" class="u13" style="visibility:hidden;"  >
<div id="u13_rtf"></div>
</div>
</div>
<div id="u14" class="u14"  >
<div id="u14_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">看不清？</span></p><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#0000FF;">换一张</span></p></div>
</div>
<div id="u15" class="u15_container"  style="cursor:hand;" >
<div id="u15_img" class="u15_normal detectCanvas"></div>
<div id="u16" class="u16"  >
<div id="u16_rtf"><p style="text-align:center;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#FFFFFF;">未注册学生</span><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#FFFFFF;">注册</span><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#FFFFFF;">&gt;&gt;</span></p></div>
</div>
</div>
<div id="u17" class="u17_container"   >
<div id="u17_img" class="u17_normal detectCanvas"></div>
<div id="u18" class="u18" style="visibility:hidden;"  >
<div id="u18_rtf"></div>
</div>
</div>
<div id="u19" class="u19_container"   >
<div id="u19_img" class="u19_normal detectCanvas"></div>
<div id="u20" class="u20" style="visibility:hidden;"  >
<div id="u20_rtf"></div>
</div>
</div>
<DIV id="u21" style="" data-label="忘记登录密码">
<DIV id="pd1u21" style="visibility:hidden;" data-label="状态2">
<div id="u22" class="u22"  >
<div id="u22_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#FF0000;">忘记登录密码？</span></p></div>
</div>
</DIV>
<DIV id="pd0u21" style="" data-label="状态1">
<div id="u23" class="u23"  >
<div id="u23_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">忘记登录密码？</span></p></div>
</div>
</DIV>
</DIV>
<div id="u24" class="u24_container"  style="cursor:hand;" data-label="Styled Button">
<div id="u24_img" class="u24_normal detectCanvas"></div>
<div id="u25" class="u25"  >
<div id="u25_rtf"><p style="text-align:center;"><span style="font-family:Arial;font-size:16px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;">登陆</span></p></div>
</div>
</div>
<div id="u26" class="u26_container"   >
<div id="u26_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u27" class="u27" style="visibility:hidden;"  >
<div id="u27_rtf"></div>
</div>
</div>
<div id="u28" class="u28_container"   >
<div id="u28_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u29" class="u29" style="visibility:hidden;"  >
<div id="u29_rtf"></div>
</div>
</div>
<div id="u30" class="u30_container"   >
<div id="u30_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u31" class="u31" style="visibility:hidden;"  >
<div id="u31_rtf"></div>
</div>
</div>
<div id="u32" class="u32_container"   >
<div id="u32_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u33" class="u33" style="visibility:hidden;"  >
<div id="u33_rtf"></div>
</div>
</div>
<div id="u34" class="u34_container"   >
<div id="u34_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u35" class="u35" style="visibility:hidden;"  >
<div id="u35_rtf"></div>
</div>
</div>
<div id="u36" class="u36_container"   >
<div id="u36_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u37" class="u37" style="visibility:hidden;"  >
<div id="u37_rtf"></div>
</div>
</div>
<div id="u38" class="u38_container"   >
<div id="u38_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u39" class="u39" style="visibility:hidden;"  >
<div id="u39_rtf"></div>
</div>
</div>
<div id="u40" class="u40_container"   >
<div id="u40_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u41" class="u41" style="visibility:hidden;"  >
<div id="u41_rtf"></div>
</div>
</div>
<div id="u42" class="u42_container"   >
<div id="u42_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u43" class="u43" style="visibility:hidden;"  >
<div id="u43_rtf"></div>
</div>
</div>
<div id="u44" class="u44_container"   >
<div id="u44_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u45" class="u45" style="visibility:hidden;"  >
<div id="u45_rtf"></div>
</div>
</div>
<div id="u46" class="u46_container"   >
<div id="u46_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u47" class="u47" style="visibility:hidden;"  >
<div id="u47_rtf"></div>
</div>
</div>
<div id="u48" class="u48"  >
<div id="u48_rtf"><p style="text-align:left;"><span style="font-family:华文新魏;font-size:28px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;">上海市义务教育阶段</span><span style="font-family:华文新魏;font-size:28px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;">新生</span><span style="font-family:华文新魏;font-size:28px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;">入学报名</span><span style="font-family:华文新魏;font-size:28px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;">平台</span></p></div>
</div>
<div id="u49" class="u49_container"   >
<div id="u49_img" >
<img src="LOGO_files/u23_normal.gif"  class="raw_image"></div>
<div id="u50" class="u50" style="visibility:hidden;"  >
<div id="u50_rtf"></div>
</div>
</div>
<div id="u51" class="u51_container"   >
<div id="u51_img" >
<img src="LOGO_files/u0_normal.gif"  class="raw_image"></div>
<div id="u52" class="u52" style="visibility:hidden;"  >
<div id="u52_rtf"></div>
</div>
</div>
<div id="u53" class="u53"  >
<div id="u53_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#FFFFFF;">修改密码</span></p></div>
</div>
<DIV id="u54" style="border-style:dotted; border-color:red; visibility:hidden; position:absolute; left:0px; top:0px; width:1357px; height:72px;;" ></div>
</div>
<div  id="btnlogin" class="preload" style="cursor:hand;">
	<img src="登陆页面_1_files/u0_normal.png" width="1" height="1"/>
	<img src="登陆页面_1_files/u2_normal.png" width="1" height="1"/>
	<img src="登陆页面_1_files/u12_normal.png" width="1" height="1"/>
	<img src="登陆页面_1_files/u15_normal.png" width="1" height="1"/>
	<img src="登陆页面_1_files/u17_normal.png" width="1" height="1"/>
	<img src="登陆页面_1_files/u19_normal.png" width="1" height="1"/>
	<img src="登陆页面_1_files/Styled_Button_u24_mouseDown.png" width="1" height="1"/>
	<img src="登陆页面_1_files/Styled_Button_u24_disabled.png" width="1" height="1"/>
	<img src="登陆页面_1_files/Styled_Button_u24_normal.png" width="1" height="1"/>
	<img src="LOGO_files/u0_normal.gif" width="1" height="1"/>
	<img src="LOGO_files/u23_normal.gif" width="1" height="1"/>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/module/login.js"></script>
</html> 
