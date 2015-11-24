<div class="sidebar">
    <div class="clearfix k1120">
        <div class="navBox" id="openSidebar">
            <a href="javascript:void(0)" class="navOpen"></a>
        </div>
        <div id="menu">
            <ul class="clearfix">
                <li><a href="#home" class="nav_home current"><span>首页<br /><b>Home</b></span></a>
                </li>
                <?php $return = $this->_category("num=5");  if (is_array($return))  foreach ($return as $key=>$xiao) { $allchildids = @explode(',', $xiao['allchildids']);    $current = in_array($catid, $allchildids);?>
                <li><a href="#<?php echo strcat($xiao['catdir']); ?>" class="nav_<?php echo $xiao['catdir']; ?>"><span><?php echo $xiao['catname']; ?><br /><b><?php echo $xiao['catdir']; ?></b></span></a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>
