<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>工单类型</title>
    <%@ include file="/common/page/meta.jsp" %>
    <link rel="stylesheet" type="text/css" href="${ctx}/sheettype/css/sheettype.css">
    <script type="text/javascript" src="${ctx}/sheettype/js/sheettype.js"></script>
</head>
<body>
    <%@ include file="/common/page/head.jsp" %>
    <div class="dbody">
        <div class="dtitle">
            工单类型
        </div>
        <button class="twoWordsButton" onclick="common.page('index')">首页</button>
        <%--省份下拉框--%>
        <div id="dproName" style="width: 40%;height: 40px;margin: 20px 0px 0px 40px;line-height: 38px">
            <span>省份名称：</span>
            <select id="proSel" name="proSel" style="width: 186px;height: 31px;border-radius: 3px;border: 1px #ccc solid;outline: none">
                <option selected value="0">请选择</option>
            </select>
        </div>
        <%--省份编码--%>
        <div id="dproId" style="width: 500px;margin: 15px 0 0 40px;">
            省份编码：<input type="text" id="proId" style="width: 174px;height: 27px;border-radius: 3px;border: 1px #ccc solid;padding: 0px 5px;margin-left: 5px;outline: none">
            <button class="twoWordsButton" onclick="Sheettype.create()" style="margin-left: 28px;">新建</button>
            <button class="twoWordsButton" onclick="Sheettype.reset('#sheetType','#sheetSel')" style="margin-left: 28px;">重置</button>
        </div>
        <%--工单类型下拉框--%>
        <div class="zTreeDemoBackground left">
            <ul class="list" style="list-style: none;">
                <li class="title">
                    工单类型：
                    <input type="hidden" name="sheetType" id="sheetType"/>
                    <input type="text" id="sheetSel" readonly value="" style="width: 155px;height: 24px;border-radius: 3px;border: 1px #ccc solid;padding-left: 5px;padding-right: 25px;outline: none" onclick="Sheettype.showMenu();"/>
                    <a href="javascript:void(0)" id="showa" onclick="Sheettype.showMenu();"
                       style="display: inline-block;width: 24px;height: 26px;position: relative;right: 31px;">
                        <b style="display: inline-block;width: 8px;height: 8px;border-right: 1px #ccc solid;border-bottom: 1px #ccc solid;transform: rotate(45deg);position: relative;top: -2px;right: -7px;"></b>
                    </a>
                    <button class="twoWordsButton" onclick="getVal()" id="menuBtn" style="margin-left: -2px;">获取</button>
                    <button class="twoWordsButton" onclick="Sheettype.clear('#sheetType','#sheetSel')" id="clear" style="margin-left: 28px;">清除</button>
                </li>
            </ul>
        </div>
        <div id="menuContent" class="menuContent" style="border: 1px #ccc solid;max-height: 227px;width: 185px;position: absolute;left: 199.125px;top: 409.5px;">
            <ul id="sheetTree" class="ztree menuul" style="margin-top: 0;overflow: scroll;width:175px;max-height: 200px;"></ul>
        </div>

        <%--异步--%>
        <div id="dproId" style="width: 500px;margin: 15px 0 0 40px;">
            异步搜索：<input type="text" id="codeName" name="codeName" onkeyup="Sheettype.searchWord(this)" onclick="Sheettype.searchWord(this)" style="width: 174px;height: 27px;border-radius: 3px;border: 1px #ccc solid;padding: 0px 5px;margin-left: 5px;outline: none">
            <div id="showDiv" class="menuul" style="display:none;position:absolute;left: 155px;z-index:1000;background:#fff;width:184px;height:160px;overflow: scroll;border:1px solid #ccc;">
            </div>
            <button class="twoWordsButton" <%--onclick="Sheettype.searchWord('#codeName')"--%> style="margin-left: 28px;">搜索</button>
        </div>

        <%--省份菜单-固定版--%>
        <div class="menuContent" style="float: right;width: 25%;height: 619px;position: relative;bottom: 260px;border: 1px #ccc solid;">
            <span>
                <ul class="menuul" style="list-style: none;max-height: 619px;overflow: scroll;margin-top: 0;">
                    <li>[10] 内蒙古</li>
                    <li>[11] 北京</li>
                    <li>[13] 天津</li>
                    <li>[17] 山东</li>
                    <li>[18] 河北</li>
                    <li>[19] 山西</li>
                    <li>[22] 澳门</li>
                    <li>[30] 安徽</li>
                    <li>[31] 上海</li>
                    <li>[34] 江苏</li>
                    <li>[36] 浙江</li>
                    <li>[38] 福建</li>
                    <li>[50] 海南</li>
                    <li>[51] 广东</li>
                    <li>[59] 广西</li>
                    <li>[70] 青海</li>
                    <li>[71] 湖北</li>
                    <li>[74] 湖南</li>
                    <li>[75] 江西</li>
                    <li>[76] 河南</li>
                    <li>[79] 西藏</li>
                    <li>[83] 重庆</li>
                    <li>[84] 陕西</li>
                    <li>[85] 贵州</li>
                    <li>[86] 云南</li>
                    <li>[87] 甘肃</li>
                    <li>[88] 宁夏</li>
                    <li>[89] 新疆</li>
                    <li>[90] 吉林</li>
                    <li>[91] 辽宁</li>
                    <li>[97] 黑龙江</li>
                    <li>[98] 集团客服</li>
                    <li>[AA] 广东互联网基地</li>
                    <li>[AB] 安徽智能语音导航基地</li>
                    <li>[AC] 北京升级投诉中心</li>
                    <li>[AD] 北京国漫中心</li>
                    <li>[AE] 腾讯运营中心</li>
                </ul>
            </span>
        </div>
    </div>
    <%@ include file="/common/page/foot.jsp" %>
</body>
</html>
