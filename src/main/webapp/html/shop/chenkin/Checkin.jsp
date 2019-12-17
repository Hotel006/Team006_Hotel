<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
    <title>欢迎页面-L-admin1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../../../css/font.css">
    <link rel="stylesheet" href="../../../css/xadmin.css">
    <script src="../../../js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="../../../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../../js/xadmin.js"></script>
<title>入住</title>
</head>
<body>
<body class="form-wrap" >

  <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-card-header">入住</div>
      <div class="layui-card-body" style="padding: 15px;">
        <form class="layui-form" action="" lay-filter="component-form-group">
          <div class="layui-form-item">
            <label class="layui-form-label">姓名：</label>
            <div class="layui-input-block">
              <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入姓名" class="layui-input">
            </div>
          </div>
          <div class="layui-form-item">
            <label class="layui-form-label">身份证号</label>
            <div class="layui-input-block">
              <input type="text" name="username" lay-verify="required" placeholder="请输入身份证号" autocomplete="off" class="layui-input">
            </div>
          </div>
          
          <div class="layui-form-item">
              <label class="layui-form-label">验证手机</label>
              <div class="layui-input-block">
                <input type="tel" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input">
            </div>
          </div>
          
          
          <div class="layui-form-item">
            <div class="layui-inline">
              <label class="layui-form-label">金额</label>
               <label class="layui-form-label">￥xxxx元</label>
            </div>
          </div>
          
          
          <div class="layui-form-item">
            <div class="layui-inline">
              <label class="layui-form-label">入住天数</label>
              <div class="layui-input-inline">
                <select name="modules" lay-verify="required" lay-search="">
                  <option value="">直接选择或搜索选择</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                </select><div class="layui-form-select"><div class="layui-select-title"><input type="text" placeholder="直接选择或搜索选择" value="" class="layui-input"><i class="layui-edge"></i></div><dl class="layui-anim layui-anim-upbit"><dd lay-value="" class="layui-select-tips">直接选择或搜索选择</dd><dd lay-value="1" class="">layer</dd><dd lay-value="2" class="">form</dd><dd lay-value="3" class="">layim</dd><dd lay-value="4" class="">element</dd><dd lay-value="5" class="">laytpl</dd><dd lay-value="6" class="">upload</dd><dd lay-value="7" class="">laydate</dd><dd lay-value="8" class="">laypage</dd><dd lay-value="9" class="">flow</dd><dd lay-value="10" class="">util</dd><dd lay-value="11" class="">code</dd><dd lay-value="12" class="">tree</dd><dd lay-value="13" class="">layedit</dd><dd lay-value="14" class="">nav</dd><dd lay-value="15" class="">tab</dd><dd lay-value="16" class="">table</dd><dd lay-value="17" class="">select</dd><dd lay-value="18" class="">checkbox</dd><dd lay-value="19" class="">switch</dd><dd lay-value="20" class="">radio</dd></dl></div>
              </div>
            </div>
          </div>
          <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">普通文本域</label>
            <div class="layui-input-block">
              <textarea name="text" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
          </div>        
          <div class="layui-form-item layui-layout-admin">
            <div class="layui-input-block">
              <div class="layui-footer" style="left: 0;">
                <button class="layui-btn" lay-submit="" lay-filter="component-form-demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  
  
  <script type="text/javascript">
  $(function () {
	$.getJSON("${request.getContextPath()}/CheckinServlet.do",function(index,ele)){
		
	}
});
  </script>
  <% int state=Integer.valueOf(request.getParameter("state"));
  String room =request.getParameter("room");
  if(state==0){
	  
  }else{
	  
  }
  %>

</body>
</html>