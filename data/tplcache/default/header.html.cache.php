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
    <meta name="keywords" content="<?php echo $site_keywords; ?>" />
    <meta name="description" content="<?php echo $site_description; ?>">
    <link href="<?php echo $site_template; ?>statics/css/style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="<?php echo $site_template; ?>statics/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="<?php echo $site_template; ?>statics/js/theme_trust.js"></script>
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
</head>