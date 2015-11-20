<?php include $this->admin_tpl('header');?>




<script type="text/javascript">
// $(function(){
// 	$.getScript("http://www.xiaocms.com/index.php?c=index&a=news");
// 	$.getScript("http://www.xiaocms.com/index.php?c=index&a=help");
// 	if ($.browser.msie && parseInt($.browser.version) < 8) $('#browser').show();

// }); 
</script>
<div class="browser" style="display:none" id="browser">XiaoCms 提示：您还在使用老掉牙IE内核浏览器，请选择极速模式(如果有的话)或升级至谷歌浏览器来获取最佳体验！</div>

<div class="subnav">
<div class="lf mr10" style="width:48%">
	<table width="100%"   class="m-table m-table2 m-table-row">
	<thead class="m-table-thead s-table-thead">
	<tr>
		<th align="left">授权信息</th>
	</tr>
	</thead>
	<tbody >
		<tr >
		<td align="left">当前域名：<?php echo $_SERVER['HTTP_HOST']?></td>
		</tr>
		<tr >
		<td align="left" id="license">授权信息：</td>
		</tr>
		<tr >
		<td align="left"  id="licensedata">获取授权：已授权</td>
		</tr>
		<tr >
		<td align="left">联系方式：15008670307</td>
		</tr>
		<tr >
		<td align="left" style="border-bottom: 0px;">官方网站：<a target="_blank" href=""></a></td>
		</tr>
		</tbody>
	</table>	
    <div class="bk10"></div>
	<table width="100%"   class="m-table m-table2 m-table-row">
	<thead class="m-table-thead s-table-thead">
	<tr>
		<th align="left">系统信息</th>
	</tr>
	</thead>
	<tbody >
		<tr >
		<td align="left">程序版本：<a href="" target="_blank"><?php echo XIAOCMS_VERSION;?></a></td>
		</tr>
		<tr >
		<td align="left">发布日期：<a href="" target="_blank"><?php echo XIAOCMS_RELEASE;?></a></td>
		</tr>
		<tr >
		<td align="left">上传限制：<?php echo $sysinfo['fileupload']?></td>
		</tr>
		<tr >
		<td align="left">运行环境：<?php echo $_SERVER['SERVER_SOFTWARE'];?></td>
		</tr>
		<tr >
		<td align="left" style="border-bottom: 0px;">mysql版本：<?php echo $this->db->getServerVersion()?></td>
		</tr>
		</tbody>
	</table>
</div>
<div class="lf mr10" style="width:48%">
	<table width="100%"   class="m-table m-table-row">
	<thead class="m-table-thead s-table-thead">
	<tr>
		<th align="left">官方动态</th>
	</tr>
	</thead>
	<tbody  id="xiaocms_news" class="newscontent">
		<tr >
		
		</tr>
	</tbody>
	</table>
    <div class="bk10"></div>
	<table width="100%"   class="m-table m-table-row">
	<thead class="m-table-thead s-table-thead">
	<tr>
		<th align="left">帮助文档</th>
	</tr>
	</thead>
	<tbody  id="xiaocms_help" class="newscontent">
		<tr >
		
		</tr>
	</tbody>
	</table>
</div>
</div>
</body>
</html>