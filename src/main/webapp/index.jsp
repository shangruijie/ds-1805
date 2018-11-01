<%--
  Created by IntelliJ IDEA.
  User: 小山勇
  Date: 2018/10/31
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <!-- 引入jQuery -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.11.3.min.js"></script>
    <!-- 引入easyui -->
    <script  src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js" ></script>
    <!-- 引入easyui  css样式  只需引入easyui.css   其中就包含了其他的内容-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css">
    <!-- 引入小图标 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css">
    <!-- 样式转化为中文 -->
    <script  src="<%=request.getContextPath()%>/js/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
    <link href="<%=request.getContextPath()%>/js/webuploader-0.1.5/webuploader.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/js/webuploader-0.1.5/style.css" rel="stylesheet" />
    <script src="<%=request.getContextPath()%>/js/webuploader-0.1.5/webuploader.js"></script>

</head>
<body class="easyui-layout">
    <div data-options="region:'north',title:'JD京东',split:true" style="height:100px;">

        <center>
            <font size="6" color="red">JD京东</font>
        </center>

    </div>
    <div data-options="region:'south',title:'各种小广告',split:true" style="height:100px;"></div>
    <div data-options="region:'east',iconCls:'icon-reload',title:'广告栏',split:true" style="width:200px;"></div>
    <div data-options="region:'west',title:'管理中心',split:true" style="width:300px;">

        <div id="aa" class="easyui-accordion" fit="true">
            <div title="管理中心" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
                <ul id="tt" class="easyui-tree">
                    <li>
                        <span>ds-1805</span>
                        <ul>
                            <li>
                                <span>操作中心</span>
                                <ul>
                                    <li>
                                        <span><a href="javascript:addTabs('spu','toSpuPage.do')">spu</a></span>
                                    </li>
                                    <li>
                                        <span><a href="javascript:addTabs('attr','toAttrPage.do')">attr</a></span>
                                    </li>
                                    <li>
                                        <span><a href="javascript:addTabs('sku','toSkuPage.do')">sku</a></span>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

    </div>
    <div data-options="region:'center',title:'展示页面'" style="padding:5px;background:#eee;">

        <div id="myTabs" class="easyui-tabs" fit="true">
            <div title="JD京东" style="padding:20px;display:none;">
                <center>
                    <font size="7">欢迎来到&nbsp;&nbsp;<font size="7" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="6">欢迎来到&nbsp;&nbsp;<font size="6" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="5">欢迎来到&nbsp;&nbsp;<font size="5" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="4">欢迎来到&nbsp;&nbsp;<font size="4" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="3">欢迎来到&nbsp;&nbsp;<font size="3" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="2">欢迎来到&nbsp;&nbsp;<font size="2" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="1">欢迎来到&nbsp;&nbsp;<font size="1" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="2">欢迎来到&nbsp;&nbsp;<font size="2" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="3">欢迎来到&nbsp;&nbsp;<font size="3" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="4">欢迎来到&nbsp;&nbsp;<font size="4" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="5">欢迎来到&nbsp;&nbsp;<font size="5" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="6">欢迎来到&nbsp;&nbsp;<font size="6" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                    <font size="7">欢迎来到&nbsp;&nbsp;<font size="7" color="red">JD</font>&nbsp;&nbsp;后台管理</font><br>
                </center>
            </div>
        </div>

    </div>
</body>
    <script>
        function addTabs(tit,url){
            var exists = $('#myTabs').tabs("exists",tit)
            if (!exists) {
                $('#myTabs').tabs('add',{
                    title:tit,
                    content:'<iframe style="width:100%;height:100%;position:relative;" src="'+url+'" frameborder="0" scrolling="true" ></iframe>',
                    closable:true,
                    tools:[{
                        iconCls:'icon-mini-refresh',
                        handler:function(){
                            var tab = $('#myTabs').tabs('getSelected');  // 获取选择的面板
                            $('#myTabs').tabs('update', {
                                tab: tab,
                                options: {
                                }
                            });
                        }
                    }]
                });
            }else{
                $('#myTabs').tabs("select",tit)
            }
        }
    </script>
</html>
