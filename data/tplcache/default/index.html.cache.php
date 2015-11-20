<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" id="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <link href="<?php echo $site_template; ?>statics/images/apple-touch-icon-57.png" sizes="57x57" rel="apple-touch-icon">
    <link href="<?php echo $site_template; ?>statics/images/apple-touch-icon-72.png" sizes="72x72" rel="apple-touch-icon">
    <link href="<?php echo $site_template; ?>statics/images/apple-touch-icon-114.png" sizes="114x114" rel="apple-touch-icon">
    <title><?php echo $site_title; ?></title>
    <meta name="keywords" content="{dede:global.cfg_keywords/}" />
    <meta name="description" content="{dede:global.cfg_description/}">
    <link href="<?php echo $site_template; ?>statics/css/style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="<?php echo $site_template; ?>statics/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="<?php echo $site_template; ?>statics/js/theme_trust.js"></script>
    <style type="text/css">
        html,
        body {
            margin: 0;
            padding: 0;
        }
        .iw_poi_title {
            color: #CC5522;
            font-size: 14px;
            font-weight: bold;
            overflow: hidden;
            padding-right: 13px;
            white-space: nowrap
        }
        .iw_poi_content {
            font: 12px arial, sans-serif;
            overflow: visible;
            padding-top: 4px;
            white-space: -moz-pre-wrap;
            word-wrap: break-word
        }
    </style>
    <script type="text/javascript" src="<?php echo $site_template; ?>statics/js/main.js"></script>
    <script>
        jQuery(document).ready(function() {
            jQuery('#openSidebar').click(function() {
                jQuery('.wrapper').toggleClass('openNav');

            });
            jQuery('#menu a').click(function() {
                jQuery('.wrapper').removeClass('openNav');
            });
        });
    </script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
    <style type="text/css">
        html,
        body,
        wrapper {
            height: 100%;
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <?php include $this->_include('header.html'); ?>

        <div class="pageMain">
            <div id="header">
                <div class="k1120 clearfix"><a href="<?php echo $site_template; ?>statics/images/logo.png" id="logo">logo</a>
                </div>
            </div>
            <div id="home" class="scrol-page">
                <div class="banner">
                    <div class="b_1">
                        <div class="k1120 clearfix">
                            <div class="b_pic">
                                <div class="mac"><img src="<?php echo $site_template; ?>statics/images/mac.png" />
                                </div>
                                <div class="iphone"><img src="<?php echo $site_template; ?>statics/images/iphone.png" />
                                </div>
                                <div class="ipad"><img src="<?php echo $site_template; ?>statics/images/ipad.png" />
                                </div>
                            </div>
                            <div class="b_text">
                                <h1>公司都需要</h1>
                                <h4>支持嵌入到微博、微信、来往等社交平台以及任意APP客户端</h4>
                                <p>电脑、手机、平板通用的响应式网站</p>
                                <p>同一域名，不同平台完美显示</p>
                                <p>随时随地任意浏览</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="banner">
                    <div class="b_2">
                        <div class="k1120 clearfix">
                            <h2>提供创新品牌网站设计服务</h2>
                            <h1>DEDECMS51.COM</h1>
                            <h5>一直致力于提供专业的设计解决方案，服务平台涵盖了互联网平台、移动平台，我们用设计为您赢得商机。</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div id="Services" class="scrol-page">
                <h2 class="title"><span>我们的服务</span></h2>
                <h5 class="infoText">一直致力于提供专业的设计解决方案，服务平台涵盖了互联网平台、移动平台，我们用设计为您赢得商机。</h5>
                <div class="servicesBox">
                    <ul class="k1120 clearfix">
                        <?php $return = $this->_category("parentid=1");  if (is_array($return))  foreach ($return as $key=>$xiao) { $allchildids = @explode(',', $xiao['allchildids']);    $current = in_array($catid, $allchildids);?>
                        <li>
                            <div class="servicesBoxList">
                                <div class="servicesBoxIcon"><i class="servicesIcon_1"></i>
                                </div>
                                <h3><?php echo $xiao['catname']; ?></h3>
                                <?php echo $xiao[content]; ?>
                            </div>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="ad_1">
                    <div class="ad_1Text">洞察&nbsp;&nbsp;·&nbsp;&nbsp;创新&nbsp;&nbsp;·&nbsp;&nbsp;品质</div>
                </div>
            </div>
            <div id="Case" class="scrol-page">
                <h2 class="title"><span>我们的作品</span></h2>
                <h5 class="infoText">新颖的设计方案，大胆的革新思想，灵活的运用最新技术，是织梦无忧的特点，我们只做有灵魂的设计</h5>
                <div class="case k1120">
                    <ul class="clearfix">
                        <?php $return = $this->_listdata("catid=2 num=8 cache=60"); extract($return); if (is_array($return))  foreach ($return as $key=>$xiao) { ?>
                        <li>
                            <div class="view-tenth"><img src="<?php echo thumb($xiao[thumb],265,176); ?>"><a href="<?php echo $xiao['url']; ?>" class="mask" target="_blank"><h2><?php echo $xiao['title']; ?></h2><p>发布于：<?php echo date("Y-m-d", $xiao['time']); ?> / 浏览：<?php echo $xiao['hits']; ?></p></a>
                            </div>
                        </li>
                        <?php } ?>
                    </ul>
                    <div class="tc moreBox"><a href="<?php echo $cats[2][url]; ?>" target="_blank" class="moreBtn">查看更多案例</a>
                    </div>
                </div>
                <div class="ad_2">
                    <h3><span>企中宝 · 您身边的建站专家</span></h3>
                    <p>强大的设计及技术团队 · 拥有成功的合作经验 · 标准化作业体系 · 一对一百分百服务 · 独享的顾问式贴身服务</p>
                </div>
            </div>

            <div id="About" class="scrol-page">
                <h2 class="title"><span>我们的自述</span></h2>
                <div class="k1120">
                    <div class="aboutBox">
                        <h4><?php echo $cats[3][seo_title]; ?></h4>
                        <?php echo $cats[3][content]; ?>
                    </div>
                </div>
            </div>
            <div id="News" class="scrol-page">
                <div class="k1120">
                    <h2 class="title"><span>新闻动态</span></h2>
                    <h5 class="infoText">您可以通过以下新闻与公司动态进一步了解我们。我们所签约的客户，无论他们的项目是大或者是小，我们都将提供100%的服务</h5>
                    <div class="newsList">
                        <ul class="clearfix">
                            <?php $return = $this->_listdata("catid=4 order=time num=6"); extract($return); if (is_array($return))  foreach ($return as $key=>$xiao) { ?>
                            <li>
                                <div class="newsListBox">
                                    <h4><a href="<?php echo $xiao['url']; ?>" target="_blank"><?php echo $xiao['title']; ?></a></h4>
                                    <p class="newsViewText"><?php echo strcut($xiao[description],70,''); ?>...</p>
                                    <p class="newsViewFoot"><a href="<?php echo $xiao['url']; ?>" target="_blank" class="newsListView">查看详情</a>
                                    </p>
                                </div>
                            </li>
                            <?php } ?>
                        </ul>
                        <div class="tc moreBox"><a href="<?php echo $cats[4][url]; ?>" target="_blank" class="moreBtn">查看更多新闻</a>
                        </div>
                    </div>
                </div>
                <div class="ab_3">
                    <h3>致力于提升客户品牌形象 , 实现客户商业目标</h3>
                    <p class="moreBox"><a href="http://wpa.qq.com/msgrd?v=3&uin={dede:global.qq/}&site=qq&menu=yes" class="viewBtn">点击咨询</a>
                    </p>
                </div>
            </div>
            <div class="scrol-page">
                <h2 class="title"><span>联系我们</span></h2>
                <div class="infoText">如果您需要超越您所期望的网站设计公司，如果您需要一个可以长期合作与信任的工作团队，那么请联系我们，我们期待您的来电，谢谢！</div>
                <div class="contactBox">
                    <div class="contactFoot" id="Contact">
                        <div class="clearfix k1120">
                            <dl><dt>联系方式</dt>
                                <dd>
                                    <?php echo $cats[5][content]; ?>
                                </dd>
                            </dl>
                            <dl><dt>QQ在线咨询</dt>
                                <dd>
                                    <p>有什么需求或有疑问请点击以下QQ头像咨询我们</p>
                                    <p><a href="http://wpa.qq.com/msgrd?v=3&uin=43431655&site=qq&menu=yes" class="qqBtn">在线客服-点击洽谈</a>
                                    </p>
                                    <p><a href="http://wpa.qq.com/msgrd?v=3&uin=521287718&site=qq&menu=yes" class="qqBtn">在线客服-点击洽谈</a>
                                    </p>
                                    <p><a href="http://wpa.qq.com/msgrd?v=3&uin=1009963712&site=qq&menu=yes" class="qqBtn">售后服务-点击洽谈</a>
                                    </p>
                                </dd>
                            </dl>
                            <dl><dt>至电顾问需求或技术支持</dt>
                                <dd>
                                    <p>如果需要做网站或需要技术支持业务请来电，谢谢！</p>
                                    <p><a tel="15221638028" class="telBtn">17090025057-石先生</a>
                                    </p>
                                    <p><a class="telBtn">15101050688-夏先生</a>
                                    </p>
                                    <p><a class="telBtn">15008670307 -焦先生</a>
                                    </p>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="mapBox">
                        <div style="width:100%;" id="dituContent"></div>
                    </div>
                </div>
                <div class="message">
                    <div class="k1120 clearfix">
                        <div class="messageRow_1">
                            <div class="messageBox">
                                <h3>告诉我们您的需求</h3>
                                <h4>在线填写需求，我们将尽快为您答疑解惑。</h4>
                                <p>网站建设QQ：521287718</p>
                                <p>业务咨询QQ：43431655</p>
                                <p>售后服务QQ：1009963712</p>
                                <p>电话：010-88888888</p>
                                <p>工作时间 9:00 ~ 19:00 </p>
                                <p>工作日（周一至周五） </p>
                            </div>
                        </div>

						<form action="/qizhongbao/index.php?c=index&a=form&modelid=3"  enctype="multipart/form-data" method="post" >
<input type="hidden" name="action" value="post" />
<input type="hidden" name="diyid" value="1" />
<input type="hidden" name="do" value="2" />
                            <?php echo $fields; ?>
                            <div class="messageRow_2">
                                <div class="messageBox">
                                    <div class="fromList">
                                        <input type="text" placeholder="您的姓名" value='' name="data[fullname]" id="full_name" />
                                    </div>
                                    <div class="fromList">
                                        <input type="text" placeholder="联系电话" value='' name="data[mobile]" id="mobile" />
                                    </div>
                                    <div class="fromList">
                                        <input type="text" placeholder="电子邮箱" value='' name="data[email]" id="email" />
                                    </div>
                                    <div class="fromList">
                                        <input type="text" placeholder="公司名称" value='' name="data[company]" id="company" />
                                    </div>
                                </div>
                            </div>
                            <div class="messageRow_3">
                                <div class="messageBox">
                                    <div class="fromList">
                                        <textarea placeholder="填写详细内容" value='' name="msg" id="msg"></textarea>
                                    </div>
									<input name="mytime" value="" type="hidden"  id="mytime"  />
      <script type="text/javascript">
                    window.onload = function(){
                    var nowDate = new Date();
                    var str = nowDate.getFullYear()+"-"+(nowDate.getMonth() + 1)+"-"+nowDate.getDate()+" "+nowDate.getHours()+":"+nowDate.getMinutes()+":"+nowDate.getSeconds();
                    document.getElementById("mytime").value=str;
                    }
                    </script>
									<input type="hidden" name="dede_fields" value="full_name,text;mobile,text;email,text;company,text;msg,multitext;mytime,text" />
                                    <input type="hidden" name="dede_fieldshash" value="c971c82ee72551f4e9e131a5a98d85bc" />
                                    <input type="image" name="sumbit" src="<?php echo $site_template; ?>statics/images/btn.png"  /><span class="fromListInfo">我们将在1个工作日内回复，资料会保密处理。</span>
                                   
                                </div>
                            </div>
                        </form>
						 
                    </div>
                </div>
            </div>
        </div>
        <?php include $this->_include('footer.html'); ?>
    </div>
    <script type="text/javascript">

        //创建和初始化地图函数：
        function initMap() {
            createMap(); //创建地图
            setMapEvent(); //设置地图事件
            addMapControl(); //向地图添加控件
            addMarker(); //向地图中添加marker
        }

        //创建地图函数：
        function createMap() {
            var map = new BMap.Map("dituContent"); //在百度地图容器中创建一个地图
            var point = new BMap.Point(121.520245, 31.30509); //定义一个中心点坐标
            map.centerAndZoom(point, 18); //设定地图的中心点和坐标并将地图显示在地图容器中
            window.map = map; //将map变量存储在全局
        }

        //地图事件设置函数：
        function setMapEvent() {
            map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
            map.disableScrollWheelZoom(); //禁用地图滚轮放大缩小，默认禁用(可不写)
            map.disableDoubleClickZoom(); //禁用鼠标双击放大
            map.disableKeyboard(); //禁用键盘上下左右键移动地图，默认禁用(可不写)
        }

        //地图控件添加函数：
        function addMapControl() {}

        //标注点数组
        var markerArr = [{
            title: "织梦无忧",
            content: "山东滕州碧水云天-中央城",
            point: "121.520061|31.305862",
            isOpen: 0,
            icon: {
                w: 23,
                h: 25,
                l: 46,
                t: 21,
                x: 9,
                lb: 12
            }
        }];
        //创建marker
        function addMarker() {
                for (var i = 0; i < markerArr.length; i++) {
                    var json = markerArr[i];
                    var p0 = json.point.split("|")[0];
                    var p1 = json.point.split("|")[1];
                    var point = new BMap.Point(p0, p1);
                    var iconImg = createIcon(json.icon);
                    var marker = new BMap.Marker(point, {
                        icon: iconImg
                    });
                    var iw = createInfoWindow(i);
                    var label = new BMap.Label(json.title, {
                        "offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)
                    });
                    marker.setLabel(label);
                    map.addOverlay(marker);
                    label.setStyle({
                        borderColor: "#808080",
                        color: "#333",
                        cursor: "pointer"
                    });

                    (function() {
                        var index = i;
                        var _iw = createInfoWindow(i);
                        var _marker = marker;
                        _marker.addEventListener("click", function() {
                            this.openInfoWindow(_iw);
                        });
                        _iw.addEventListener("open", function() {
                            _marker.getLabel().hide();
                        })
                        _iw.addEventListener("close", function() {
                            _marker.getLabel().show();
                        })
                        label.addEventListener("click", function() {
                            _marker.openInfoWindow(_iw);
                        })
                        if (!!json.isOpen) {
                            label.hide();
                            _marker.openInfoWindow(_iw);
                        }
                    })()
                }
            }
            //创建InfoWindow
        function createInfoWindow(i) {
                var json = markerArr[i];
                var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
                return iw;
            }
            //创建一个Icon
        function createIcon(json) {
            var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w, json.h), {
                imageOffset: new BMap.Size(-json.l, -json.t),
                infoWindowOffset: new BMap.Size(json.lb + 5, 1),
                offset: new BMap.Size(json.x, json.h)
            })
            return icon;
        }

        initMap(); //创建和初始化地图
    </script>
</body>

</html>