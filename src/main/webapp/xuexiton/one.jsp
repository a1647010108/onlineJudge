<%--
  Created by IntelliJ IDEA.
  User: BlackBox
  Date: 2022/4/19
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>防作弊</title>
    <link href="/css/courselist-v2/basic.css?v=1.0" rel="stylesheet" type="text/css" />
    <link href="/css/courselist-v2/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet"/>

    <link href="/css/set/BanJi.css" type="text/css" rel="stylesheet"/>
    <link href="/css/set/teachingClass.css" type="text/css" rel="stylesheet"/>
    <link href="/css/courselist/teacherclass.css?v=2021-1224-1429" rel="stylesheet" type="text/css" />
    <link href="/css/courselist/teacherclassCH.css" rel="stylesheet" type="text/css" /><link href="/css/set/basic.css" type="text/css" rel="stylesheet"/>
    <link href="/css/set/index.css" type="text/css" rel="stylesheet"/>

    <link href="/css/set/manage.css?v=2020-1216-1101" type="text/css" rel="stylesheet" />

    <link href="/css/noticlist_table.css?v=2018-0110-1944" type="text/css" rel="stylesheet"/>
</head>
<script src="/js/ServerHost.js"></script>
<script src="/js/noticeUploadCourseImg.js?v=2021-0201-1828"></script>
<script type="text/javascript" src="/js/swfupload/swfupload.queue.js"></script>
<script src="/js/swfupload/swfupload.js?v=2020-1029-1025"></script>

<script src="/static/js/domain.js"></script>
<script type="text/javascript" src="/js/common/jquery.min.js"></script>
<script type="text/javascript" src="/js/common/jquery-migrate.min.js"></script>
<link href="/js/webuploader-0.1.5/webuploader.css" type="text/css" rel="stylesheet"/>
<script src="/js/webuploader-0.1.5/webuploader.nolog.min.js"></script>
<script src="/js/set/right.js"></script>
<script src="/js/set/jquery.iosslider.min.js"></script>
<script type="text/javascript" src="/js/set/ajaxUploadFile.js"></script>
<script src="/js/set/teachingClass.js?v=2020-1223-1347"></script>
<script src="/js/set/worker_util.js" ></script>
<script type="text/javascript" src="/js/set/wayer_v1.2.mini.js"></script>
<script type="text/javascript" src="/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="/js/set/pageUtil.js?v=2020-0401-0943"></script>
<script src="/js/courselist-v2/prettyCheckboxes.js" type="text/javascript" charset="utf-8"></script>
<script src="/js/jquery.jqote2.min.js"></script>
<style>
    .zli_m_select { width: 160px;margin-left: 5px; padding: 5px; border: 1px #d8d8d8 solid;border-radius: 1px;}
    .XZEZJ{width:380px;height:300px;border:1px solid #ccc;position:absolute;top:30px;background:#fff;overflow-y:scroll;display:none}    .ZJxzpbt a{display:block;width:360px;height:22px;line-height:22px;background:#fafafa;border-top:1px solid #ccc;}
    .ZJxzp a{display:block;width:340px;height:22px;line-height:22px;border-top:1px solid #ccc;padding-left:20px;}
    .XZEZJ a:hover{background:#ccc}
    .XzZJmain{height: 23px;position: absolute;width: 46px;}    .XzZJmain a{color:#202020;margin-left: 0px;}
    .zti_h{color:#7b9e31;}
    .zti_h i{margin-left:14px;}
    .zti1_search{padding-left:6px;}
    .zbtn{padding:0 12px;font-size:12px;border-radius:4px;height:28px;line-height:28px;}
    .ztl_list td{text-align:center;font-size:12px;}
    .ztl_list th{font-size:14px;}
    .delete{color:#7b9e31;}
    .ztd_open{padding-left:0px;}
    .ztd_time{padding-left:0}
    .ztd_field{width:110px;}
    .zat_input{width:260px;}
    .zat_sinput{padding:0 5px;}
    .page_size_div{display: inline-block;height: 25px;line-height: 23px;padding: 0 8px;margin: 5px 3px 0 0;background: #fff;overflow: hidden;vertical-align: top;}
    .page_size_input{width: 30px;display: inline-block;height: 23px;line-height: 23px;padding: 0 8px;background: #fff;border: 1px solid #e5e5e5;overflow: hidden;vertical-align: top;}
    .page_stusize_input{width: 30px;display: inline-block;height: 23px;line-height: 23px;padding: 0 8px;background: #fff;border: 1px solid #e5e5e5;overflow: hidden;vertical-align: top;}
    .Het {height: .7rem;display: -webkit-box;-webkit-box-align: center;margin-bottom: .2rem;margin-top: .4rem;padding: 0 .48rem;}
    .yqm {font-size: .32rem;text-align: center;line-height: .5rem;}
    .title {font-size: .28rem;color: #333;font-weight: normal;display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 2;overflow: hidden;text-align: center;width: 100%;line-height: 1.4;}
    .yqm span {color: #0099ff;font-size: .4rem;}
    .p2 {font-size: .22rem;text-align: center;line-height: .3rem;color: #999;}
    .ewm {width: 4.84rem;height: 4.84rem;margin: 0 auto;margin-top: .3rem;}
    .invitecodecolse {display: inline-block;width: .2rem;height: .2rem;position: absolute;right: .2rem; top: .2rem;}
    .sortBtnUl{top:33px;}
</style>
<body class="zbody">
<link rel="stylesheet" type="text/css" href="/css/set/teacherHeader.css"/>
<link href="/css/set/moocLeft.css" type="text/css" rel="stylesheet"/>

<div class="mb10">
    <script type="text/javascript" src="//3wfy-ans.chaoxing.com/passport/allHead.shtml"  charset="utf-8"></script>
</div>




<style type="text/css">
    .workTip{display:none;width:8px;height:8px;background:red;border-radius:8px;position:absolute;top:-2px;right:0px}
    .testTip{display:none;width:8px;height:8px;background:red;border-radius:8px;position:absolute;top:-2px;right:0px}
    .cdataTip{display:none;width:8px;height:8px;background:red;border-radius:8px;position:absolute;top:-2px;right:0px}
    .workTipPd{display:none;width:8px;height:8px;background:red;border-radius:8px;position:absolute;top:10px;right:0px}
    .experience{display:inline-block;padding:0 10px!important;height:28px;border:1px solid #e1e7f0;background: #F6F9FE;text-align:center;line-height:28px;font-size:14px;color:#5C7499;border-radius: 30px;margin-left: 20px;}
    .experience:hover{opacity:0.7}
    .US{ display: inline-block;width: 170px;overflow: hidden;height: 40px;white-space: nowrap;text-overflow: ellipsis;line-height: 40px;}
</style>

<div  class="header" >
    <div class="headermask"></div>
    <div class="headerwrap">
        <div class="menu" >
            <div class="navhide">
                <span></span>功能导航				</div>
            <div class="navshow">
                <ul>
                    <li><a mode="yiji"  href="/mycourse/teachercourse?moocId=218188246&clazzid=41014454&ut=t&enc=6975844948b390de154a23ff2a27c891&cpi=96827506&openc=094e843e6cb72b07d3580f0d5941e8c8"  title="首页">首页</a><label id="mytaskcount"></label></li>

                    <li><a mode="fuseMode" target="_blank" href="//mobilelearn.chaoxing.com/widget/pcpick/main/index?courseId=218188246&cpi=96827506&jclassId=41014454&fid=1040&enc=6975844948b390de154a23ff2a27c891" title="活动">活动</a></li>
                    <li><a  href="/moocAnalysis/statistics-tch?courseId=218188246&classId=41014454&ut=t&enc=6975844948b390de154a23ff2a27c891&cpi=96827506&openc=094e843e6cb72b07d3580f0d5941e8c8" title="统计">统计</a></li>
                    <li><a  href="/coursedata?classId=41014454&courseId=218188246&type=1&ut=t&enc=6975844948b390de154a23ff2a27c891&cpi=96827506&openc=094e843e6cb72b07d3580f0d5941e8c8" title="资料">资料</a></li>
                    <li><a mode="fuseMode"   href="/schoolCourseInfo/getNotifyList?courseId=218188246&classId=41014454&ut=t&enc=6975844948b390de154a23ff2a27c891&cpi=96827506&openc=094e843e6cb72b07d3580f0d5941e8c8" title="通知">通知</a></li>

                    <li><a 																										href="/work/getAllWork?classId=41014454&courseId=218188246&isdisplaytable=2&mooc=1&ut=t&enc=6975844948b390de154a23ff2a27c891&cpi=96827506&openc=094e843e6cb72b07d3580f0d5941e8c8"
                                                                                                                                  title="作业">作业  </a><i class="workTip"></i></li>
                    <li><a mode="yiji"  href="/exam/test?classId=41014454&courseId=218188246&ut=t&enc=6975844948b390de154a23ff2a27c891&cpi=96827506&openc=094e843e6cb72b07d3580f0d5941e8c8" title="考试">考试 </a><i class="testTip"></i></li>


                    <li><a mode="fuseMode"  href="/bbscircle/grouptopic?courseId=218188246&clazzid=41014454&ut=t&enc=6975844948b390de154a23ff2a27c891&cpi=96827506&openc=094e843e6cb72b07d3580f0d5941e8c8" title="讨论">讨论</a></li>








                    <li><a   class="current"     href="/teachingClassManage/teachingClassList?courseId=218188246&classId=41014454&ut=t&openc=094e843e6cb72b07d3580f0d5941e8c8&cpi=96827506" title="管理">管理</a></li>

                    <li>
                        <a href="/mycourse/teachercourse?moocId=218188246&clazzid=41014454&ut=t&enc=6975844948b390de154a23ff2a27c891&cpi=96827506&openc=094e843e6cb72b07d3580f0d5941e8c8&v=2"
                           class="experience" style="border-radius: 30px;font-size:14px;padding:0">体验新版</a>
                    </li>

                </ul>
            </div>
        </div>
        <div class="name">
            <h1>
				<span title="防作弊">
					<span class="fl CH">防作弊</span>
					    					  	  <a id="head_a" class="fl"
                                                     style="font-size: 14px;color: #7b9e31;margin-top:10px;" 						  	   href='javascript:void(0)' onclick="$('#tpsubmit').submit();">课程门户					  	  </a>
					    					</span>
                </span>
                <span></span>
            </h1>
        </div>
        <form id="tpsubmit"   action="/course/218188246.html" target="_blank"   method="post">
            <input type="hidden" name="edit" value="true"></input>
        </form>

    </div>
</div>
<input type="hidden" id="cid" value="41014454">

<script>
    if ($(".navshow ul li").length > 11) {
        $(".navshow ul li").css("margin-left", "4px");
        $(".navshow ul li a").css("padding", "2px 5px");
    }
    if ($(".navshow ul li").length > 10) {
        $(".navshow ul li").css("margin-left", "5px");
        $(".navshow ul li a").css("padding", "2px 6px");
    }
    var showExpandread = '';
    if (showExpandread == 'true') {
        $(".navshow ul li").css("margin-left", "1px");
        $(".navshow ul li a").css("padding", "0px 5px");
        $(".experience").css("margin-left", "5px");
    }

    $('.navhide span').click(function () {

        $(this).parent().hide(0,function(){
            $('.navshow').show();
            $('.navshow').animate({'margin-right':0 + 'px'},400);
        });
    });
    $('.navshow span').click(function(){
        $('.navhide').show();
        $(this).parent().animate({'margin-right':-980 + 'px'},400,function(){
        });
    });
    var hasWorkDot=false;
    var hasExamDot=false;
    var hasCourseDataDot=false;
    //待批作业、待批考试红点数据加载
    var redDot = function(){
        jQuery.ajax({
            type: "get",
            url : "/api/workTestPendingNew",
            data: {
                classIds:$("#cid").val()
            },
            success: function(data){
                var json= jQuery.parseJSON(data)[0];
                if('t'=='s') {
                    if(json.hasWorkMsg){
                        $(".workTip").css("display","inline-block");
                        hasWorkDot=true;
                    }
                    if(json.hasExamMsg){
                        $(".testTip").css("display","inline-block");
                        hasExamDot=true;
                    }
                    if(json.hasCourseDataMsg){
                        $(".cdataTip").css("display","inline-block");
                        hasCourseDataDot=true;
                    }
                }
            }

        });
    }
    $(function(){
        var yiji = "false";
        var fuseMode = "false";
        var readyMode = "false";

        if ("true" == yiji) {
            $(".navshow").find("li a").each(function(index, ele){
                var type = $(this).attr("mode");
                if (type != "yiji") {
                    $(this).attr("target", "");
                    $(this).attr("href", "javascript:;");
                    $(this).removeAttr("onclick");
                    $(this).click(function(){
                        alert("访问高峰时段，此功能暂时关闭");
                    });
                }
            });
        } else if ("true" == fuseMode) {
            $(".navshow").find("li a").each(function(index, ele){
                var type = $(this).attr("mode");
                if ("fuseMode" == type) {
                    $(this).attr("target", "");
                    $(this).attr("href", "javascript:;");
                    $(this).removeAttr("onclick");
                    $(this).click(function(){
                        alert("访问高峰时段，此功能暂时关闭");
                    });
                }
            });
        }

        if ('t' == 's' && "true" != readyMode) {
            setTimeout('redDot()',1000);
        }

        if($(".navshow ul li").length==1){
            $(".navshow").css("display","none");
        }

    });
    var rmWorkDot = function(classid,type,me){
        if ('work' == type) {
            location.href=$(me).attr("data");
            return;
        }
        if('exam'==type && !hasExamDot){
            location.href=$(me).attr("data");
            return;
        }
        if('cdata'==type && !hasCourseDataDot){
            location.href=$(me).attr("data");
            return;
        }

        jQuery.ajax({
            type: "get",
            dataType: "json",
            url : "/api/removeRedDot",
            data: {
                classId:classid,
                type:type
            },
            success: function(data){
                if(data && data.status){
                    //success
                    location.href=$(me).attr("data");
                }
            }

        });

        //location.href=$(me).attr("data");
    }

</script>
<!--main start-->
<div class="clearfix wrap1000 con">
    <div class="zcenter" style="width:1100px;margin-top:20px;">
        <div class="zdouble">
            <div class="studentContentView" >
                <div class="fr zwide">
                    <div class="ztitle">
                        <i class="invitecodetitle" style="display:inline-block;width:16px;height:16px;float:left;margin:13px 5px 0 0;"><img src="/images/coursedata/ewm.png" /></i>
                        <h1 class="zti_h"><span title="默认班级"> 默认班级</span> <span style="font-size:8pt"></span><i onclick="changeClassName('默认班级');" style="line-height:30px;width:50px;font-size:12px;color:#7b9e31;cursor:pointer;background:none;">重命名</i><!--<span style="font-size:8pt;margin-left: 12pt;color:#333;">班级创建时间：2021-05-12</span>--></h1>
                        <div class="clear"></div>
                    </div>
                    <div class="ztitle1" style="margin-top:12px;">
                        <span class="fr" style="margin-left:18px;"><a class="zbtn	" href="#" onclick="javascript:exportClassStudent(41014454,'updown');">导出名单</a></span>
                        <span class="fr"><a class="zbtn	" href="javascript:void(0);" onclick="showAddStudentContainer();">添加学生</a></span>
                        <span class="zf12 zg6 fl" style="color:#555;margin-top:4px;display:none;">该班共有<i>2</i>学生</span>
                        <input type="text"  style="margin-left: 10px;margin-bottom:10px;"  placeholder='请输入学号、姓名' name="require" id="require" value="" onfocus="if(this.placeholder == '请输入学号、姓名') {this.placeholder = '';}" class="zti1_search"/><input type="button" id="" class="zti1_submit" value=" " onclick="filterTeachingClassList();" style="margin-bottom:10px;"/>
                        <div class="clear"></div>
                    </div>
                    <div class="ztableList clearfix">
                        <input type="hidden" id="newCreateClazzTip" name="newCreateClazzTip" value="请在课程列表取消课程结课，再新建班级"/>
                        <input type="hidden" id="courseState" name="courseState" value="0" />
                        <input type="hidden" id="stuId" name="stuId" value="" />
                        <input type="hidden" id="courseId" value="218188246" />
                        <input type="hidden" id="fid" value="1040" />
                        <input type="hidden" id="openc" value="094e843e6cb72b07d3580f0d5941e8c8"/>
                        <input type="hidden" id="courseName" name="courseName" value="防作弊"/>
                        <input type="hidden" id="teachingClassName" name="teachingClassName" value="默认班级"  />
                        <input type="hidden" id="teachingClassId" name="teachingClassId" value="41014454"/>
                        <input type="hidden" id="classId" name="classId" value="41014454"/>
                        <input type="hidden" id="pid" name="pid" value=""/>
                        <input type="hidden" id="schoolTitleHide" value="0"/>
                        <input type="hidden" id="personId" value="96827506"/>
                        <input type="hidden" id="importEnc" value="ce5b380ee9dc15a2482be254185ef98b"/>
                        <input type="hidden"  id="enc"  value='43fbd207f4983488a2cbe5898dd8a358'  />
                        <input type="hidden" id="cpi" value="96827506"/>
                        <input type="hidden" name="importExportEnc" value="a131fbfb8c6bc175d7fc7976a6a4b118" id="importExportEnc"/>
                        <input type="hidden" name="moocImportExportUrl" value="https://mooc-import-export-ans.chaoxing.com" id="moocImportExportUrl"/>
                        <input type="hidden" name="schoolId" value="1040" id="schoolId"/>

                        <table class="ztl_list zf14" border="0" width="100%" cellspacing="" cellpadding="">
                            <tr>
                                <th width="86">序号</th>
                                <th width="98">姓名</th>
                                <th>学号/工号								<a href="javascript:void(0);" onclick="studentOrder('updown')"  style="float:right;padding-right:10px;padding-top:3px"  >
                                    <img id="orderByNameupgray"  src="/images/coursedata/sort_up_gray.png"  style="display:block" />
                                    <img id="orderByNamedown" src="/images/coursedata/sort_down.png"  style="display:none" />
                                    <img id="orderByNameup" src="/images/coursedata/sort_up.png"  style="display:none"  />
                                </a>
                                </th>
                                <th> 院系  </th>
                                <th> 专业  </th>
                                <th> 班级  </th>
                                <th>加入时间</th>     						<th width="120">操作</th>
                            </tr>
                            <tbody id="allstu">
                            <tr  id="188295002">
                                <td style="text-align:left;">
                                    <input name="studentId" type="checkbox" id="studentId" value="175393732" style="margin-left:10px;"/> <i>1</i>
                                </td>
                                <td align="center">
                                    test
                                </td>
                                <td align="left" style="padding-left:10px;">cxwid175393732</td>
                                <td align="center" title="">

                                </td>
                                <td align="center" title="">

                                </td>
                                <td align="center" title="">

                                </td>
                                <td align="center" title="2021-05-12 12:41:59.0">
                                    2021-05-12
                                </td>
                                <td align="center">
                                    <a class="accessLog" href="/moocAnalysis/accesslog?courseId=218188246&classId=41014454&cpi=96827506&ut=t&stucpi=188295002&openc=094e843e6cb72b07d3580f0d5941e8c8&from=1" style="margin-right: 10px;color: #7b9e31;">访问日志</a>
                                    <a href="javascript:void(0)" onclick="initDeleteId(this);WAY.box.show({'divid':'dropTip','mask':false});" title='移除' class="delete">移除</a>
                                </td>
                            </tr>
                            <tr  id="96825741">
                                <td style="text-align:left;">
                                    <input name="studentId" type="checkbox" id="studentId" value="107541028" style="margin-left:10px;"/> <i>2</i>
                                </td>
                                <td align="center">
                                    张春梅
                                </td>
                                <td align="left" style="padding-left:10px;">2019058740</td>
                                <td align="center" title="经济与管理学院">
                                    经济与管理学院
                                </td>
                                <td align="center" title="投资学">
                                    投资学
                                </td>
                                <td align="center" title="投资本191">
                                    投资本191
                                </td>
                                <td align="center" title="2021-05-13 11:33:34.0">
                                    2021-05-13
                                </td>
                                <td align="center">
                                    <a class="accessLog" href="/moocAnalysis/accesslog?courseId=218188246&classId=41014454&cpi=96827506&ut=t&stucpi=96825741&openc=094e843e6cb72b07d3580f0d5941e8c8&from=1" style="margin-right: 10px;color: #7b9e31;">访问日志</a>
                                    <a href="javascript:void(0)" onclick="initDeleteId(this);WAY.box.show({'divid':'dropTip','mask':false});" title='移除' class="delete">移除</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="fr clearfix" style="margin-top:15px;"><div class="page" style="padding:0 0;"></div></div>
                        <table class="zf12 fl" width="100%" border="" cellspacing="" cellpadding="" style="width:300px;margin-top:10px;">
                            <tr>
                                <td width="56">
                                    <p class="zpt10">
                                        <input type="checkbox" name="checkAll" id="ckeckAll" onclick="check(this);" class="vm"/>
                                        <label for="zall">
                                            <span class="zvm zf12 zg5">全选</span>
                                        </label>
                                    </p>
                                </td>
                                <td width="54">
                                    <p class="zpt10 zglb">
                                        <a class="dib fl" href="#" onclick="showNotifyTable();" style="margin-top:2px;">发通知</a>
                                    </p>
                                </td>
                                <td width="60">
                                    <p class="zpt10 zglb">
                                        <a class="zpl dib fl" href="javascript:void(0)" onclick="batchDelete();">移除</a>
                                    </p>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <div class="ztableDown">
                        <p class="zf16 zpt10 zglb zse_arrow"><span class="clazzConfBtn"><a href="javascript:void(0);">班级设置</a><i></i></span></p>
                        <div class="zf12 clazzConfiguration" style="display:none;">
                            <ul class="zlabel zpt10">
                                <li class="zpt10">
                                    <label>
					<span class="zvm zf12 zg5">班级人数上限						<input onkeyup="checkNum(this)" style="height: 16px;width: 50px;border: 1px #cdcdcd solid;margin: 0 4px;"id="studentCountLimit" name="studentCountLimit" type="text" />学生					    <a style="padding-left:5px;color: #71aa29;" href="javascript:void(0);" onclick="saveLimitCount()">保存</a>
						<a style="padding-left:15px;opacity: 0;" id="saveCount" href="javascript:;">保存成功！</a>
					</span>
                                    </label>
                                </li>
                                <li class="zpt10">
                                    <label>
                                        <input type="checkbox" class="vm"  checked='true'   onchange="updateCommonClass();" name="commonClass" id="commonClass" />
                                        <span class="zvm zf12 zg5">公共班级</span>
                                    </label>
                                </li>
                                <li class="zpt10">
                                    <label>
                                        <input type="checkbox" class="vm"   onchange="setPushToWeChat();" name="pustToWeChat" id="pustToWeChat" />
                                        <span class="zvm zf12 zg5">推送活动通知至微信</span>
                                    </label>
                                </li>
                                <li class="zpt10">
                                    <label>
                                        <input type="checkbox" class="vm"  checked='true'   onchange="updateEnableInvitecode();" name="enableInvitecode" id="enableInvitecode" />
                                        <span class="zvm zf12 zg5">允许学生加入</span>
                                    </label>
                                </li>
                                <li class="zpt10">
                                    <label>
                                        <input type="checkbox" class="vm" onchange="changeRetire(218188246);"  checked  name="retire" id="retire" />
                                        <span class="zvm zf12 zg5">允许学生退课</span>
                                    </label>
                                </li>
                                <li class="zpt10">
                                    <form id="emailForm" action="/teachingClassManage/setInformNew" method="post">
                                        <label>
                                            <input type="hidden" name="courseId" id="courseId" value="218188246">
                                            <input type="hidden" name="rssinform" id="rssinform" value="0">
                                            <input type="hidden" name="clazzId" id="clazzId" value="0">
                                            <input type="hidden" name="cpi"  value="96827506">
                                            <input type="checkbox" name="znotice"  id="znotice" class="vm" onchange="mailOperationSet();"  />
                                            <span class="zvm">开通本课程邮件通知</span>
                                        </label>
                                    </form>
                                </li>
                                <li class="zpt10">
                                    <label>
                                        <input name="hideClazz" id ="hideClazz" type="checkbox"  onchange="javascript:changeHideClazz(this);"/>&nbsp;&nbsp;对学生隐藏该班级				</label>
                                </li>
                                <li class="zpt10">
                                    <label>
                                        <input name="hideClazz" id ="hideClazz" type="checkbox"  onchange="javascript:changeIgnoreVideoCtrl(this);"/>&nbsp;&nbsp;忽略视频拖拽及窗口切换（若学生已开始学习，不建议修改）
                                    </label>
                                </li>
                                <li class="zpt10">
                                    <label>
                                        <input name="review" id ="review" type="checkbox"  onchange="javascript:changeStatus(this);"/>&nbsp;&nbsp;开启结课模式（学生进入结课模式，学习行为不会产生统计数据的增加） 				</label>
                                </li>

                                <li class="zpt10">
                                    <label>
                                        <input name="FAQ" id ="FAQ" type="checkbox"  onchange="javascript:changeFAQ(this);"/>&nbsp;&nbsp;显示专家答疑（勾选后，学生端显示“专家答疑”模块）<a href="http://ckzx.chaoxing.com:8080/ey/introduce.html" target="_blank" style="color:#73ab2a">第三方答疑 说明和举例</a>
                                    </label>
                                </li>



                            </ul>

                            <ul class="zlabel zpt10 ztd_open">
                                <li>
                                    <span class="fl" style="width:100px;height:24px;margin-right:10px">开放报名设置&nbsp;：</span>
                                    <label for="benxiao">
                                        <input type="radio" name="zopen" id="close" class="vm"  checked='true'   onchange="doChangePublic(0);" />
                                        <span class="zvm zf12 zg5">关闭报名</span>
                                    </label>
                                </li>
                                <li>
                                    <label for="benxiao">
                                        <input type="radio" name="zopen" id="benxiao" class="vm"   onchange="doChangePublic(1);" />
                                        <span class="zvm zf12 zg5">本校开放</span>
                                    </label>
                                </li>
                                <li>
                                    <input type="radio" name="zopen" id="quanwang" class="vm"   onchange="doChangePublic(2);" />
                                    <label for="quanwang">
                                        <span class="zvm zf12 zg5">全网开放</span>
                                    </label>
                                </li>
                            </ul>
                            <div class="clear"></div>

                            <div class="ztd_time zpt15 open_time" style="display:none">
                                <input id="applyDate"  type="hidden" value="2021-05-12 12:34"/>
                                <span class="zdib ztd_field" style="padding-right:0px;">开放时间：</span>
                                <input id="applyBeginTime" type="text" class="zse_input zpl5" onfocus="WdatePicker({minDate:'new Date()}',dateFmt:'yyyy-MM-dd HH:mm',maxDate:'#F{$dp.$D(\'applyEndTime\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm'});" value="2021-05-12 12:34" ><b class="zse_rel"><i class="zse_clock" onclick="WdatePicker({el:'applyBeginTime',minDate:'new Date()}',dateFmt:'yyyy-MM-dd HH:mm',maxDate:'#F{$dp.$D(\'applyEndTime\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm'});"></i></b>

                                <span class="zg9 ztc zpl2 zpr2">——</span>
                                <input id="applyEndTime" type="text" class="zse_input zpl5" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'applyBeginTime\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm'});" class="inpTxt" type="text" name="applyEndTime"   value="2022-05-12 12:34"  autocomplete="off"><b class="zse_rel"><i class="zse_clock" onclick="WdatePicker({el:'applyEndTime',minDate:'#F{$dp.$D(\'applyBeginDate\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm'});"></i></b>
                                <a style="padding-left:5px;color: #71aa29;"  href="javascript:void(0);" id="saveClassApplyTime">保存</a><a style="padding-left:15px;opacity: 0;"id="saveshow2" href="javascript:;">保存成功！</a>
                            </div>
                            <ul class="zlabel zpt10">
                                <li class="zpt10">
                                    <span class="fl" style="width:100px;height:24px;">章节开放设置&nbsp;：</span>
                                    <label for="zallow">
                                        <span class="mr10">&nbsp;&nbsp;<a style="color:#73ab2a"  onclick="return changeChapterStatus('open');" href="javascript:void(0);" />全部开放</a></span>
                                        <span class="mr10">&nbsp;&nbsp;<a  style="color:#73ab2a" onclick="return changeChapterStatus('close');" href="javascript:void(0);" />全部关闭</a></span>
                                        <span class="mr10">&nbsp;&nbsp;<a  style="color:#73ab2a" onclick="return changeChapterStatus('task');" href="javascript:void(0);" />全部闯关模式</a></span>
                                    </label>
                                </li>
                            </ul>
                            <div class="ztd_time">
                                <input id="curDate"  type="hidden" value=""/>
                                <span class="zdib ztd_field zf12">班级开放时间设置：</span>
                                <input id="startTime" type="text" autocomplete="off" class="zse_input zpl5" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'curDate\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm',maxDate:'#F{$dp.$D(\'endTime\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm'});"  value="" ><b class="zse_rel"><i class="zse_clock" onclick="WdatePicker({el:'startTime',minDate:'#F{$dp.$D(\'curDate\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm',maxDate:'#F{$dp.$D(\'endTime\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm'});"></i></b>

                                <span class="zg9 ztc zpl2 zpr2">——</span>
                                <input id="endTime"   type="text" class="zse_input zpl5" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'startTime\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm'});" class="inpTxt" type="text" name="endTime"  value=""  autocomplete="off"><b class="zse_rel"><i class="zse_clock" onclick="WdatePicker({el:'endTime',minDate:'#F{$dp.$D(\'startTime\',{d:0})}',dateFmt:'yyyy-MM-dd HH:mm'});"></i></b>
                                <a style="padding-left:5px;color: #71aa29;" href="javascript:void(0);" id="saveClassOpenTime">保存</a><a style="padding-left:15px;opacity: 0;"id="saveshow" href="javascript:;">保存成功！</a>
                            </div>
                            <div class="ztd_time" style="color: #a8a8b3;">
                                非开放时间段内班级将进入结课模式，学生无法完成任务点、作业、章节测验。若延长开课结束时间，将自动关闭结课模式
                            </div>

                            <div class="zlabel zpt20" style="line-height: 30px"><span class="fl" style="width:113px;height:20px;">班级所属学期：</span>
                                <span class="fl">
                <select name="semesterId" id="semesterId" class="selectTag" onchange="changeSemester()">
                    <option value="0">选择</option>
                                            <option value="6688"  >2021-2022第二学期</option>
                                            <option value="5855"  >2021-2022第一学期</option>
                                            <option value="1982"  >2020年春季学期</option>
                                            <option value="3681"  >2020-2021第二学期</option>
                                            <option value="3544"  >2020-2021第一学期</option>
                                    </select>
            </span>
                            </div>
                            <div class="zlabel" style="height: 20px;padding-top: 40px;">
                                <span class="fl"><a style="font-size:12px;cursor:pointer;color:#73ab2a;" onclick="updateClassFiled('218188246',1,41014454);">删除班级</a></span>
                            </div>


                        </div>
                    </div>

                    <script >
                        //替换非数字输入
                        function checkNum(obj) {
                            var v = obj.value;
                            obj.value = v.replace(/[^\d]/g, '');
                        }
                        function saveLimitCount() {
                            var count = $("#studentCountLimit").val();
                            if(count > 100000){
                                alert('班级人数上限最大为100000');
                                return;
                            }
                            jQuery.get("/teachingClassManage/updateCountLimit", {
                                    classId: 41014454,
                                    courseId: 218188246,
                                    cpi: 96827506,
                                    limitCount: count
                                },
                                function(msg) {
                                    if(msg=="1"){
                                        $("#saveCount").css({opacity: 1});
                                        $("#saveCount").animate({opacity: 0},2000);
                                    }

                                });
                        }
                        $("#saveClassOpenTime").click(function(){
                            var startTime=$("#startTime").val();
                            var endTime=$("#endTime").val();
                            if(startTime == "" || endTime == ""){
                                alert('请设置班级开放时间');
                                return ;
                            }else{
                                if(startTime == endTime){
                                    alert('班级开放时间设置不合理');
                                    return ;
                                }
                            }

                            var classId = $("#teachingClassId").val();
                            settime(startTime,endTime,classId,"true");
                        });
                        function settime(startTime,endTime,classIdVal,save){
                            var cpi = $("#cpi").val();
                            jQuery.ajax({
                                type : "get",
                                url : "/teachingclassmanage/setopentime",
                                data : {
                                    classId : classIdVal,
                                    startTime : startTime,
                                    endTime  :endTime,
                                    classNum : 1,
                                    cpi : cpi,
                                    courseId : 218188246
                                },
                                dataType : "json",
                                success : function(data) {
                                    if (data.status == 1) {
                                        var clazzState = data.clazzState;
                                        if(clazzState == 1){
                                            $("#review").prop("checked",true)
                                        }else{
                                            $("#review").prop("checked",false)
                                        }

                                        if(save=="true"){
                                            $("#saveshow").css({ opacity:1});
                                            $("#saveshow").animate({opacity:0 },2000);
                                        }
                                    } else {
                                        alert(data.msg);
                                    }
                                }
                            });
                        }

                        $("#saveClassApplyTime").click(function(){
                            var applyBeginTime=$("#applyBeginTime").val();
                            var applyEndTime=$("#applyEndTime").val();
                            if(applyBeginTime==""||applyEndTime==""){
                                alert('请设置班级开放时间');
                                return ;
                            }else{
                                if(applyBeginTime == applyEndTime){
                                    alert('班级开放时间设置不合理');
                                    return ;
                                }
                            }
                            var classId = $("#teachingClassId").val();
                            setApplyTime(applyBeginTime,applyEndTime,classId,"true");

                        });
                        function setApplyTime(startTime,endTime,classIdVal,save){
                            jQuery.post("/teachingClassManage/setApplyTime",
                                {
                                    classId:classIdVal,
                                    applyBeginDate:startTime,
                                    applyEndDate:endTime
                                },
                                function(data){
                                    if(data==1&&save=="true"){
                                        $("#saveshow2").css({ opacity:1});
                                        $("#saveshow2").animate({opacity:0 },2000);
                                    }
                                });
                        }
                    </script>

                </div>
            </div>
            <style type="text/css">
                #classDiv{padding:0 5px;background:#f5f5f5}
                .mainLeft li{font-size:16px;border-bottom:none}
                .classList{border:none;width:auto}
                .classList li{width:auto}
                .classList li a{background:#f5f5f5;width:auto}
                .mainLeft li .openOrClose{background:#f5f5f5;}
                .mainLeft li a.createClass{border-top:none;border:none;background:#f5f5f5;text-align:left;color:#7b9e31;padding:0 10px}
                .mainLeft li .openOrClose{text-decoration:none;text-align:left;padding:0 10px;color:rgba(187,187,187)}
                .classList li a {text-align: left;padding: 0 10px;color: #666;}
                .filedClassesList li a.curClass{color:#fff;background: #7b9e31;}
                .classList li a.curClass{border-radius:5px;color: #7b9e31;background: #E6EBDC;}
                .openOrClosefiledClasses i {display: inline-block;width: 14px;height: 8px;background: url(/images/openBtn3.png) no-repeat;}
                .openOrClosefiledClasses i.closed {background: url(/images/openBtn3Up.png) no-repeat;}
                .openOrClose i{filter:gray;-webkit-filter: grayscale(100%);filter: grayscale(100%);}
                .mainLeft li a.openOrClosefiledClasses{text-align:left;padding:0 15px;border-top:solid 3px #fff;background:#f5f5f5}
                .openOrClosefiledClasses i{filter:gray;-webkit-filter: grayscale(100%);filter: grayscale(100%);}
                .filedClassesList{background:#f5f5f5}
                .filedClassesList li a{color:#666;text-align:left;}
                .mainLeft li.bordBt{border-bottom:solid 1px #f2f2f2}
                .createClass span {background: url(/images/add3.png) no-repeat; height: 10px;width: 10px;display: -webkit-inline-box;}
                .openOrClose i {background: url(/images/openBtn2.png) no-repeat;}
                .openOrClose i.closed {background: url(/images/openBtnUp.png) no-repeat;}
            </style>
            <div class="fl zsidebar">
                <div class="mainLeft fl">
                    <ul>
                        <li >
                            <a  href="/teachingClassManage/teachingClassList?courseId=218188246&classId=41014454&ut=t&openc=094e843e6cb72b07d3580f0d5941e8c8"   class="cur"   id="classManage" style="line-height:40px;line-height:40px">
                                班级管理				</a>
                            <div  class="left_search"  style="display:none;"  >
                                <input id="left_search_val" type="text" value="" placeholder='搜索班级' onkeydown="if(event.keyCode==13){return false;}" />
                                <ul class="lx_List" style=""></ul>
                            </div>
                            <div id="classDiv">
                                <a href="javascript:void(0);" class="createClass"   ><span></span>新建班级</a>
                                <ul class="classList clearfix" style="border-color:#f2f2f2">
                                    <div class = "moocClasses">
                                    </div>
                                    <div class = "spocClasses">
                                        <li   clazzId="41014454">
                                            <a href="javascript:;"  class="curClass" data-size="1" onclick="goUrl('218188246','41014454','t','094e843e6cb72b07d3580f0d5941e8c8');" title="默认班级">默认班级</a>
                                        </li>
                                    </div>
                                </ul>

                            </div>

                            <div class = "filedClasses">
                            </div>
                        </li>
                        <li class="bordBt" ><a  href="/teachingClassManage/toCommonCreatorNew?courseId=218188246&ut=t&openc=094e843e6cb72b07d3580f0d5941e8c8&classId=41014454&cpi=96827506">教师团队管理</a></li>
                        <li class="bordBt" ><a  href="/teachingClassManage/toAssistantNew?courseId=218188246&ut=t&openc=094e843e6cb72b07d3580f0d5941e8c8&classId=41014454&cpi=96827506">助教管理</a></li>
                        <li class="bordBt" ><a  href="/teachingClassManage/setcourseinfoNew?courseId=218188246&ut=t&openc=094e843e6cb72b07d3580f0d5941e8c8&classId=41014454&cpi=96827506">课程管理</a></li>
                        <li class="bordBt"><a  href="/teachingClassManage/toClazzAssigned?courseId=218188246&ut=t&openc=094e843e6cb72b07d3580f0d5941e8c8&classId=41014454&cpi=96827506">班级分配</a></li>
                        <li class="bordBt"><a  href="/manage/downloadcenter?courseId=218188246&ut=t&cpi=96827506&openc=094e843e6cb72b07d3580f0d5941e8c8&classId=41014454">下载中心</a></li>
                        <li class="bordBt"  ><a  href="/teachingClassManage/toEditorActivity?courseId=218188246&ut=t&openc=094e843e6cb72b07d3580f0d5941e8c8&classId=41014454&cpi=96827506">操作日志</a></li>
                    </ul>
                </div>
            </div>
            <script >
                $('#classManage').click(function(){
                    if($('#classDiv').css('display') == 'none'){
                        $('#classDiv').css('display','block');
                    }
                    else{
                        $('#classDiv').css('display','none');
                    }
                })

                $('.openOrClosefiledClasses').click(openOrClosefiledClassesClick);
                function openOrClosefiledClassesClick(){
                    var  filedClazzData = $('#filedClazz').attr("data");
                    if(filedClazzData == "opean"){
                        $('#filedClazz').attr("data","closed");
                        $('.filedClassesList').hide();
                        $('.openOrClosefiledClasses i').removeClass('closed');
                    }else{
                        $('#filedClazz').attr("data","opean");
                        $('.filedClassesList').show();
                        $('.openOrClosefiledClasses i').addClass('closed');
                    }
                }


                $('.openOrClose').click(openOrCloseClick);

                var expandall = '展开全部';
                var packup = '收起';
                function openOrCloseClick(){
                    if($('.openOrClose span').text() == expandall){
                        $('.classList li').removeClass('disNone');
                        $('.openOrClose span').text(packup);
                        $('.openOrClose i').addClass('closed');
                    }else{
                        $('.classList .spocClasses li:gt(4)').addClass('disNone');
                        $('.openOrClose span').text(expandall);
                        $('.openOrClose i').removeClass('closed');
                    }
                }


                function setHeight(){
                    var num = $('.lx_List li').size();
                    if(num >=8){
                        $('.lx_List').height(320+'px');
                        $('.lx_List').css('overflow-y','auto');
                    }else{
                        var h_li = $('.lx_List li').height();
                        $('.lx_List').height(h_li*num+num+2);
                        $('.lx_List').css('overflow-y','auto');
                    }
                }
                function changeSrc(){
                    var num = $('.classList li a.curClass').parent().index();
                    var len = $('.classList li a.curClass').attr("data-size");
                    if(num == 0){
                        $('.upBtn').children('img').attr('src','/css/images/courselist-v2/upGrey.png');
                        $('.downBtn').children('img').attr('src','/css/images/courselist-v2/downGreen.png');
                    } else if(num == len-1){
                        $('.upBtn').children('img').attr('src','/css/images/courselist-v2/upGreen.png');
                        $('.downBtn').children('img').attr('src','/css/images/courselist-v2/downGrey.png');
                    } else {
                        $('.upBtn').children('img').attr('src','/css/images/courselist-v2/upGreen.png');
                        $('.downBtn').children('img').attr('src','/css/images/courselist-v2/downGreen.png');
                    }
                }
                changeSrc();
                function change(val){
                    val = val.trim();

                    $(".lx_List").html("");

                    var find=0;
                    if(val==''){
                        $(".lx_List").hide();
                    }else{
                        $(".lx_List").show();

                        var list = $('.classList li');

                        for(var i =0;i<list.size();i++){
                            var curli = $(list[i]);
                            var cura = $(curli.find("a"));
                            if(cura.attr("title") && cura.attr("title").indexOf(val)>-1){
                                $(".lx_List").append('<li onclick="'+ cura.attr("onclick") +'"><a href="javascript:;" title="'+ cura.attr("title") +'" >'+ cura.text() +'</a></li>');
                                find++;
                            }
                        }

                    }

                    if(find==0){
                        $(".lx_List").hide();
                    }else{
                        setHeight();
                    }
                }

                (function($) {
                    $.fn.watch = function(callback) {
                        return this.each(function() {
                            //缓存以前的值
                            jQuery.data(this, 'originVal', $(this).val());
                            //event
                            $(this).on('keyup paste', function() {
                                var originVal = $(this, 'originVal');
                                var currentVal = $(this).val();

                                if (originVal !== currentVal) {
                                    jQuery.data(this, 'originVal', jQuery(this).val());
                                    callback(currentVal);
                                }
                            });
                        });
                    }
                })(jQuery);

                $(document).ready(function() {

                    jQuery("#left_search_val").watch(function(value) {
                        window.setTimeout(function(){
                            change($("#left_search_val").val());
                        },200);
                    });
                });


                function upOrDown(move){
                    // 校验是否可以移动
                    var num = $('.classList li a.curClass').parent().index();
                    var len = $('.classList li a.curClass').attr("data-size");
                    if(move == "up"){
                        if (num == 0 ) {
                            alert("无法上移");
                            return ;
                        } else {
                            moveClazzId = $('.classList li a.curClass').parent().prev().attr("clazzid");

                        }
                    }
                    if(move == "down"){
                        if (num == len-1 ) {
                            alert("无法下移");
                            return "fail";
                        } else {
                            moveClazzId = $('.classList li a.curClass').parent().next().attr("clazzid");
                        }
                    }
                    var  clazzId =$('.classList li a.curClass').parent().attr("clazzid");
                    $.ajax({
                        type: "get",
                        url : "/teachingClassManage/upordownclazz-v2",
                        dataType:'json',
                        data: {
                            "courseId" : 218188246,
                            "moveClazzId" : moveClazzId,
                            "clazzId" :  clazzId
                        },
                        success: function(data){
                            if (data.status == 'success') {
                                location.reload();
                            } else {
                                alert(data.msg);
                                location.reload();
                            }
                        }
                    });

                    changeSrc();
                }

            </script>
            <div class="clear"></div>
            <script>
                //切换学校
                function addChangeTitle(e) {
                    $("#addSchoolTitle").val($(e).attr("data"));
                    //$("#schoolTitleHide").val($(e).attr("value"));
                    $("#add-schoollist").hide();
                    $("#handFid").val($(e).attr("value"));

                }
                var importExportUrl = "https://mooc-import-export-ans.chaoxing.com";
            </script>
            <script src="/js/courselist-v2/importStu.js?v=2020-1217-1132" type="text/javascript"></script>
            <div id="addStudentContainer" style="display:none;">
                <div class="zlayer"></div>
                <div class="zlooo">
                    <div class="zlo_md">
                        <h2 class="zlo_title">
                            <span class="zlo_close" onclick="hideAddStudentContainer();"></span>
                            <span class="zlo_h">添加学生</span>
                        </h2>
                        <div class="zlo_content1">
                            <ul class="zcc_tab zpl30">
                                <li class="zcc_cur" style="cursor: pointer;">手动添加</li>
                                <li class="zcc_def" style="cursor: pointer;">批量导入</li>
                                <li class="zcc_def" style="cursor: pointer;" onclick="findcourseclazz(this,'Course');" >从课程班级添加</li>
                            </ul>
                            <div class="zcc_box1"  style="display: block;">
                                <div class="zlo_txt zpt5 zf12 zg5" style="padding-bottom:0;">
                                    <p style="text-align:center;">输入学生姓名、手机/学号即可添加学生</p>
                                </div>
                                <input  id="handFid" type="hidden"  class="INp" style="width:150px"  value="1040" />
                                <p class="zpt10 zf12" style="padding-left:99px;"><span class="zat_field">姓名：</span><input type="text" name="realname" id="realname" class="zat_input" value="" /></p>
                                <p class="zpt10 zf12" style="text-align:center;"><span class="zat_field" style="width:95px">手机/学号：</span><input type="text" name="moocUserName" id="moocUserName" class="zat_input" value="" /></p>
                                <div>
                                    <div class="zlo_btn zf14" style="padding-top:24px;padding-bottom:24px;text-align:center">
                                        <a href="#" class="zbtn" onclick="addMoocUserNew(this);">添加</a>
                                    </div>
                                </div>
                            </div>
                            <div class="zcc_box1">
                                <div class="zlo_txt zpt5 zf12 zg5" style="padding-bottom:0;">
                                    <p style="text-align:center;">填写名单时请仔细阅读模板文件中的说明文字，并严格按照其中所述规则填写。否则可能会导入失败。</p>
                                </div>
                                <dl class="zba_btn">
                                    <dt><a href="https://mooc-import-export-ans.chaoxing.com/template/importUserTemplateNew.xls">下载最新模板</a></dt>
                                    <dd id="batchImportBtn"><label class="mr10">&nbsp;&nbsp;<input type="file" name="iframeFileName" id="batchImport"  action='https://mooc-import-export-ans.chaoxing.com/import/batchImportClass' onchange="changefileV2(this);" class="zinfile"></input><span class="zinfile_under" style="background-color:#7B9E31;">批量导入</span></label></dd>
                                    <dd id="importProcessBtn" style="display:none;"><span>正在导入...</span></dd>
                                </dl>
                                <dl class="zba_schedule" style="display:none">
                                    <dt class="zba_jd" style="width: 0%;"></dt>
                                    <dd class="zba_nt zwaiting">23<i>(3)</i>/400</dd>
                                </dl>
                            </div>
                            <div class="zcc_box1">
                                <div class="zat_xx">
                                    <input type="hidden" id="typeFlag" value="4">

                                    <div class="fl zf12" style="float:left;">

                                        <select class="fl zli_m_select" style=" width:112px;height:26px; padding:2px; white-space:nowrap;font-size:12px;" id="courseList" name="courseList" onchange="findcourseclazz(this);">

                                        </select>
                                        <select class="fl zli_m_select" style=" width:112px;height:26px; padding:2px; white-space:nowrap;font-size:12px;" id="clazzList" name="clazzList" onchange="searchClazzStu();">

                                        </select>
                                    </div>

                                    <div class="fr zat_search">
                                        <input type="text" type="text" onfocus="this.value=''" onblur="onkeyblur(this);" id="clazzQuery"  value='请输入关键字进行查询'class="zat_sinput">
                                        <input type="button" id="" class="zat_submit" onclick="searchClazzStu(1)">
                                    </div>

                                    <div class="clear"></div>
                                </div>

                                <div class="zat_box zf12" id="dataTable">
                                    <table border="0" width="100%" cellspacing="" cellpadding=""  id="tableId2">

                                        <thead style="display: block;" class="zf14">
                                        <tr>
                                            <th width="150" align="left">序号</th>
                                            <th width="400" align="left">学号/工号</th>
                                            <th width="150" align="left">姓名</th>
                                        </tr>
                                        </thead>

                                        <tbody class="zat_tbody" id="clazzstuList" style="display: block;height: 120px; overflow: auto;">

                                        </tbody>
                                    </table>
                                </div>
                                <div >
                                    <div>
                                        <div class="fr pageCLzStu" style="display:none;">
                                            <div class="fr">
                                                <p class="fr page_size_div" >
                                                    页码
                                                    <input class="page_stusize_input"/>
                                                </p>
                                                <p class="page1 fr" id="pagination2"></p>
                                            </div>
                                        </div>
                                        <div class="fl zpt5">
                                            <input class="vm" value="" id="checkAllClzStu" name="radiocheck" type="checkbox" onclick="checkCurPageClz(this)"/>
                                            <label for="zpageCur">
                                                <span class="zvm zf12 zg5">选中当前页</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <div class="zlo_btn zat_xx" style="text-align:center;">
                                    <a href="javascript:void(0);" class="zbtn" onclick="addStuByClazzPerson();">添加</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="maskBg importstudentresult" style="display: none;">
                <div class="wid440">
                    <div class="popHead"><a href="javascript:;" class="closePic"><img width="100%" height="100%" src="/space/new/moocIndex/images/closePng.png" onclick="hideimportresult();"/></a>提示</div>
                    <p class="pCon">成功导入<i class="greenColor importsuccesscount">0</i>条，已添加。
                        <i class="repeatmsg" style="display: none;">
                            重复数据 <i class="redColor repeatCount">0</i>条，
                        </i>
                        失败<i class="redColor importfailcount">0</i>条，请修改后再次导入</p>
                    <a href="javascript:;" class="greenBtn2" onclick="exportErrorStuData();" >导出错误数据项</a>
                </div>
            </div>


            <script type="text/javascript">
                function onkeyblur(e){
                    if(e.value==''){e.value='请输入关键字进行查询'}
                }

                $(function(){
                    $(".zbo_inselect").focus(function(){
                        $("#add-schoollist").show();
                    });
                })
                var addSearchSchool= function(me,jsId){
                    var kw=$(me).val();
                    var pid=$("#pid").val();
                    kw = kw.replace(/(^\s*)|(\s*$)/g, "");
                    if(kw!=''){
                        if(window._lastReqest){
                            window._lastReqest.abort();
                        }
                        window._lastReqest = jQuery.ajax({
                            url : "/teachingClassManage/searchSchool",
                            data:{kw:kw,pid:pid},
                            type : "post",
                            success : function(data) {
                                var schoollist = eval("("+data+")")
                                var tpl = $('#tpl-schoollist1').jqote(schoollist);
                                $('#add-schoollist').html("");
                                $('#add-schoollist').append(tpl);
                            }
                        });
                    }
                }

                function changePageAdd(pageNum){

                    searchStuPageInfo(pageNum,pageSize);
                }
                function isPositiveInteger(s){//是否为正整数
                    var re = /^[0-9]+$/ ;

                    return re.test(s)
                }
                $(".page_size_input").bind('keypress',function(event){
                    if(event.keyCode == "13"){
                        //changePageAdd();
                        var num = $(".page_size_input").val();
                        if(num && isPositiveInteger(num)){
                            changePageAdd(parseInt(num));
                        }else{
                            alert('无效的数字');
                        }
                        event.stopPropagation();
                        event.preventDefault();
                    }
                });

                function changePageClzStu(pageNum){

                    searchClazzStu(pageNum);
                }


                $(".page_stusize_input").bind('keypress',function(event){
                    if(event.keyCode == "13"){
                        var num = $(".page_stusize_input").val();
                        if(num && isPositiveInteger(num)){
                            changePageClzStu(parseInt(num));
                        }else{
                            alert('无效的数字');
                        }
                        event.stopPropagation();
                        event.preventDefault();
                    }
                });
            </script>		<div class="zlibrary zboxshadow" id="sendMessage" style="display:none;width:750px;height:420px;position:relative;">
            <div class="zbo_title"><label style="float:left;font-weight: bold;">发信息</label><span class="zbo_close" onclick="WAY.box.hide();"></span></div>
            <div>
            </div>
            <div class="zli_content">
                <div style="margin-bottom:20px;">
                    <label>发送给：</label>
                    <textarea cols="80" rows="3" id="studentsList">
        </textarea>
                    <input type="hidden" id="studentIdList"/>
                </div>
                <div style="margin-bottom:20px;">
                    <label>内容：</label>
                    <textarea cols="80" placeholder='最多允许输入1000个字符' rows="10" id="messageContent" >
        </textarea>
                </div>
                <div>
                    <a style="margin-top:2px;margin-left:50px;" href="javascript:sendPrivateMessage();" class="lvBtn fl">
                        <span>发送</span>
                    </a>
                </div>
            </div>
        </div>



            <div class="zlibrary" id="operateStudents" style="display:none;width:750px;height:auto;position:relative;padding:0;">
                <div class="zbo_title"><label style="float:left;font-weight: bold;">删除学生</label><span class="zbo_close" onclick="WAY.box.hide();"></span></div>
                <div class="CeYan" style="padding:14px 26px 4px 4px;">
                    <div>
                        <p  class="fl" style="padding:10px 10px;">
                            检索到符合条件的学生<em style=" font-weight:bold;padding-left:5px; padding-right:5px;" id="recentStudentCount">0</em>
                        </p>
                    </div>

                    <div class="BJ_stu" style="border:0; background:none transparent;">
                        <table width="698px" cellpadding="0" cellspacing="0" style="border: 1px solid #e1e1e1;">
                            <thead style="display: block;">
                            <tr>
                                <th width="100" align="center"></th>
                                <th width="200" align="center">学号/账号</th>
                                <th width="150" align="center">姓名</th>
                                <th width="148" align="center">加入时间</th>
                                <th width="100" align="center"></th>
                            </tr>
                            </thead>
                            <tbody style="display: block;height: 300px; overflow: auto;" id="recentlyStudentsContent">

                            </tbody>
                        </table>
                        <div class="BJ_stuBottom clearfix">
                            <div class="pageBar fr" id="pageNew"></div>
                            <span class="fl" style="margin-left:0px;"><label><input type="checkbox" name="ckeckRecentStudentAll" id="ckeckRecentStudentAll" onclick="checkRecentStudent(this);">&nbsp;&nbsp;全选</label></span>&nbsp;&nbsp;&nbsp;
                            <a href="javascript:void(0)"  onclick="javascript:deleteRecentStuAll();" style=" background-position:-192px -706px; color:red;margin-top:3px;" class="BJ_glbtn1 fl" >删除学生</a>&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                </div>
                <div>
                </div>
            </div>
        </div>
        <script>

        </script>

        <div class="zbox zboxshadow" style="display:none;box-shadow:none;width:578px;border:1px solid #ccc;padding:0;height:200px;" id="operateClass">
            <div class="zbo_title">班级名称<span class="zbo_close" onclick="boxHide();"></span></div>
            <div class="zbo_content">
                <table border="" cellspacing="" cellpadding="">
                    <tr class="zbo_pt">
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="200" align="right">班级名称：</td>
                        <td width="180" id="addform"><input class="zbo_intext" type="text" id="newTeachingClassName" name="teachingClassName" value="" /></td>
                        <td><em class="zbo_important">*</em></td>
                    </tr>
                    <tr class="zbo_pt">
                        <td></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <div class="tishi" style="text-align: center;margin-top:-10px;margin-bottom:10px;  display:none ">
                    提示：如需将本班级数据纳入课程统计，请在建班之后务必设置班级开放时间。
                </div>
                <div class="zbo_btn" style="width: 220px; margin: 0 auto; padding-left: 40px; text-align: center;">
                    <p class="fl class_create_btn"><input class="zbo_submit" type="button" id="" name="" value='完成' onclick="createGroup();"/></p>
                    <p class="fl class_modify_btn" style="display:none;"><input class="zbo_submit" type="button" id="" name="" value='完成' onclick="doChangeClassName();"/></p>
                    <p class="fr"><a class="zbo_cancel" href="javascript:;" onclick="boxHide();">取消</a></p>
                    <div class="clear"></div>
                </div>
            </div>
        </div>	</div>
</div>
</div>
<div style="display: none;" id="detailshow">
    <div class="alert0330" style="width:500px;top:10%;left:30%;position:fixed;z-index:999;">
    </div>
</div>
<div id="mask" style="display:none;position:fixed;z-index:998;top:0;left:0;width:100%;height:100%;background:#000;opacity:0.5;"></div>
<div id="invitecode" style="display:none; z-index:999;width: 6.3rem;height: 7.9rem;background: #fff;position: fixed;top: 50%;left: 50%;margin-top: -3.95rem;margin-left: -3.15rem;">
    <img class="invitecodecolse" src="/images/close2.png" / >
    <div class="Het"><h2 class="title">默认班级</h2></div>
    <p class="yqm">邀请码：
        <span class="inviteCodeSpan"></span>
    </p>
    <p class="p2">手机APP首页右上角输入</p>
    <div class="ewm">
        <img width="100%" height="100%" id="clsInviteCodeImg" src="" />
    </div>
</div>
<!--main end-->
<style>
    .tkLayer{position:absolute;left:0;top:35%;width:100%;z-index:99999;}
    .clearfix{zoom:1;}
    .clearfix:after{display:block;content:"";height:0;clear:both;overflow: hidden;}
    .delTk{background:#fff;width:578px;margin:0 auto;border:1px solid #ccc;position:relative;}
    .tkTitle{height:49px;line-height:49px;font-size:16px;font-family:"微软雅黑";padding:0 15px;background:#f0f0f0;border-bottom:1px solid #e0e0e0;}
    .tkCon{font-size:16px;line-height:36px;text-align:center;font-family:"微软雅黑";padding:28px 5px;}
    .selBtn{height:36px;margin-bottom:24px;text-align:center;}
    .confirmBtn,.cancleBtn{display:inline-block;width:96px;font-size:14px;line-height:36px;height:36px;text-align:center;border-radius:3px;}
    .confirmBtn{background:#7b9e31;color:#fff;margin:0 10px;}
    .confirmBtn:hover{background:#8cb833;}
    .cancleBtn{background:#e6e6e6;color:#666;margin:0 10px}
    .cancleBtn:hover{background:#ebebeb;color:#808080;}
    .tkClosed{display:block;width:13px;height:13px;background:url(/space/new/moocIndex/images/closePng.png) no-repeat left center;position:absolute;top:16px;right:15px;}
</style>
<!--弹框-->
<div id="dropTip" class="tkLayer" style="display:none">
    <div class="delTk clearfix">
        <h3 class="tkTitle">移除学生<a class="tkClosed" href="javascript:void(0);" onclick="WAY.box.hide();"></a></h3>
        <p class="tkCon">移除学生后，可在操作日志中恢复学生及其学习记录？</p>
        <div class="selBtn">
            <a href="javascript:void(0);" class="confirmBtn">确定</a>
            <a href="javascript:void(0);" class="cancleBtn" onclick="WAY.box.hide();">取消</a>
        </div>
    </div>
</div>
<!--弹框 结束--></body>

<script>
    $('.cancelFiled').click(function(){
        var courseId = $("#courseId").val();
        var classId = $("#teachingClassId").val();
        updateClassFiled(courseId,0,classId);
    });
    $('.invitecodetitle').click(function(){
        var courseId = $("#courseId").val();
        var classId = $("#teachingClassId").val();
        $.ajax({
            url : '/teachingClassPhoneManage/phone/showClsInviteCode',
            type : 'get',
            data : {
                'courseId': courseId,
                'classId' : classId
            },
            dataType : 'json',
            success : function(data){
                if(data.status){
                    var inviteCode = data.inviteCode;
                    $(".inviteCodeSpan").text(inviteCode);
                    var sUrl = data.qrCodeUrl;
                    $("#clsInviteCodeImg").attr("src",sUrl);
                    $("#mask").show();
                    $("#invitecode").show();
                }else{
                    alert(data.msg);
                }
            }
        });


    })
    $('.invitecodecolse').click(function(){
        $("#mask").hide();
        $("#invitecode").hide();
    })
    $("#dropTip .confirmBtn").click(function(){
        deleteStu();
    });
    page.showPage(1,1,"changePage", "首页", "尾页");
    function changePage(pageNum) {
        var classGroupName = encodeURIComponent("");
        var require = $('#require').val();
        if (require != undefined)
            require = encodeURI(encodeURI(require));
        else
            require = "";
        // 添加联盟学校参数
        var schoolId, schoolName = "";
        var checkSchoolId = $("#schoolTitleHide").val();
        var checkedSchoolName = $("#schoolTitle").val();
        if (checkedSchoolName != undefined && checkSchoolId != undefined && checkedSchoolName != "全部学校") {// 联盟单位
            schoolId = checkSchoolId;
            schoolName = checkedSchoolName;
        } else
            schoolId = -1;// 普通单位
        location.href = "/teachingClassManage/teachingClassList?classId=41014454&require="
            + require
            + "&courseId=218188246&teachingClassId=&show=&pageNum="
            + pageNum
            + "&classGroupName="
            + classGroupName
            + "&ut=t"
            + "&cpi=96827506"
            + '&schoolid='
            + schoolId + '&schoolName=' + schoolName + '&orderType=updown';
    }
    function doClickClassName(classObj){
        //goUrl('218188246','${c.id}','t');
    }


    $(function(){
        $(".XzZJmain").hover(function(){
            $(".XZEZJ").show();

        },function(){
            $(".XZEZJ").hide();
        });

        $(".XZEZJ").blur(function(){
            $(".XZEZJ").hide();
        });

        //回填学校信息

        $(document).keypress(function(event){
            if(event.keyCode==13)
            {
                //filterTeachingClassList();
            }
        });

    });

    //学校切换事件-联盟单位
    function changeTitle(e) {
        $("#schoolTitle").val($(e).attr("data"));
        $("#schoolTitleHide").val($(e).attr("value"));
        $(".XZEZJ").hide();
        filterTeachingClassList();
    }
</script>
<script src="/js/courselist-v2/courselist.js?v=2022-0222-1610" type="text/javascript"></script>
<script src="/js/courselist-v2/jquery-often-effects.js" type="text/javascript" charset="utf-8"></script>
<script src="/js/courselist-v2/jquery.mCustomScrollbar.concat.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/js/courselist-v2/rem1920.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">

    $(function(){
        var zccCurLength = $("#addStudentContainer").find(".zlo_content1").find(".zcc_cur").length;
        if(zccCurLength == 0 && $("#addStudentContainer").find(".zlo_content1").find("li").length > 0){
            $("#addStudentContainer").find(".zlo_content1").find("li").eq(0).removeClass("zcc_def").addClass("zcc_cur");
        }
    })
    //弹层标签切换
    $('.zcc_tab').tab({
        contentCss:'.zcc_box1',
        titleOff:'zcc_def',
        titleOn:'zcc_cur'
    });
    $('#classManage').click(function(){
        if($('#classDiv').css('display') == 'none'){
            $('#classDiv').css('display','block');
        }
        else{
            $('#classDiv').css('display','none');
        }
    })
</script>
<!-- 模板 -->
<script type="text/x-c-template" id="tpl-schoollist">
    <![CDATA[
    <p class="ZJxzp" >
        <a href="javascript:void(0)" onclick="changeTitle(this);" data="<%=this.shortName%>"  value="<%=this.schoolid%>"><%=this.pyname%></a>
    </p>
    ]]>
</script>
<script type="text/x-c-template" id="tpl-schoollist1">
    <![CDATA[
    <p class="ZJxzp" >
        <a href="javascript:void(0)" onclick="addChangeTitle(this);" data="<%=this.pyname%>(<%=this.schoolid%>)"  value="<%=this.schoolid%>"><%=this.pyname%>(<%=this.schoolid%>)</a>
    </p>
    ]]>
</script>
<script type="text/javascript">
    var searchSchool= function(me){
        var kw=$(me).val();
        var pid=$("#pid").val();
        kw = kw.replace(/(^\s*)|(\s*$)/g, "");
        if(kw!=''){
            if(window._lastReqest){
                window._lastReqest.abort();
            }
            window._lastReqest = jQuery.ajax({
                url : "/teachingClassManage/searchSchool",
                data:{kw:kw,pid:pid},
                type : "post",
                success : function(data) {
                    var schoollist = eval("("+data+")")
                    var tpl = $('#tpl-schoollist').jqote(schoollist);
                    $('#js-schoollist').html("");
                    $('#js-schoollist').append("<p class=\"ZJxzp\"><a href=\"javascript:void(0)\" onclick=\"changeTitle(this);\" style=\"color:#7a9e30\" data=\"全部学校\" value=\"0\">全部学校</a></p>");
                    $('#js-schoollist').append(tpl);
                    $(".XZEZJ").show();
                }
            });
        }
    }
</script>
<script type="text/javascript">

    function showNotifyTable(){
        var stuChecked = $("[name='studentId']:checked");
        if(stuChecked == null || stuChecked.size() == 0) {
            alert("请先选择学生。");
            $("#detailshow").hide();
            return;
        }
        var stuIds = stuChecked.map(function(){return this.value}).get().join(',');
        showadddetail(stuIds);
    }

    function showadddetail(stuIds){
        var courseId = 218188246;
        var classId = 41014454;
        var url = "/schoolCourseInfo/toNoticeAdd";
        jQuery.ajax({
            type: "get",
            url: url,
            data: {"studentIds":stuIds,"courseId":courseId,"clazzId":classId},
            success: function(data){
                $("#detailshow").html(data);
            }
        });
        $("#detailshow").show();
    }
</script>
</html>

