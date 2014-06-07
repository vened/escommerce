<?php 
     if (!defined('_SAPE_USER')){
        define('_SAPE_USER', '2681e12f53e3cace2e02e5b50ec2f0cb'); 
     }
     require_once($_SERVER['DOCUMENT_ROOT'].'/'._SAPE_USER.'/sape.php'); 
     $sape = new SAPE_client();
?>
<?php
defined('_JEXEC') or die('Restricted access');
$path = $this->baseurl.'/templates/'.$this->template;
$lang = $this->language;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >

<head>

<jdoc:include type="head" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Expires" content="Mon, 26 Jul 1997 05:00:00 GMT" />
<meta http-equiv="Pragma" content="no-cache" />
<link rel="stylesheet" href="<?php echo $path ?>/css/template.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $path ?>/css/edit.css" type="text/css" />
<script language="javascript" type="text/javascript" src="<?php echo $path ?>/js/jquery-1.6.2.min.js"></script>
<script src="http://cdn.jquerytools.org/1.2.5/all/jquery.tools.min.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $path ?>/js/main.js"></script>
</head>

<?php if ($_REQUEST["id"] == 47) : ?>
   <body id="Home">
<?php endif; ?>
<?php if ($_REQUEST["id"] != 47) : ?>
   <body>
<?php endif; ?>

<div id="wrapper">




<!--HEADER BEGIN-->
    <div id="Header" class="clearFix">
        <?php if ($_REQUEST["id"] == 47) : ?>
            <span id="Logo">
            	<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" width="209" height="107">
					<param name="allowScriptAccess" value="sameDomain" />
					<param name="allowFullScreen" value="false" />
					<param name="movie" value="/templates/redesign/i/logo.swf" />
					<param name="quality" value="high" />
					<param name="wmode" value="transparent" />
					<param name="bgcolor" value="#ffffff" />
					<embed src="/templates/redesign/i/logo.swf" quality="high" wmode="transparent" bgcolor="#ffffff" width="209" height="107" name="logo" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" />
				</object>
<!--<a title="Перейти к поздравлению" style="position: relative;top: -5px;" href="/ru/happy-new-year"><img src="http://www.hrtsm.ru/images/start/happy-new-year.gif"></a>-->
            </span>        
        <?php endif; ?>
        <?php if ($_REQUEST["id"] != 47) : ?>
            <?php if ($lang == 'ru-ru') : ?>
                <span id="Logo">
            		<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" width="209" height="107">
						<param name="allowScriptAccess" value="sameDomain" />
						<param name="allowFullScreen" value="false" />
						<param name="movie" value="/templates/redesign/i/logo.swf" />
						<param name="quality" value="high" />
						<param name="wmode" value="transparent" />
						<param name="bgcolor" value="#ffffff" />
						<embed src="/templates/redesign/i/logo.swf" quality="high" wmode="transparent" bgcolor="#ffffff" width="209" height="107" name="logo" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" />
					</object>
					<a href="/ru"></a>
<!--<a title="Перейти к поздравлению" style="position: relative;top: -5px;" href="/ru/happy-new-year"><img src="http://www.hrtsm.ru/images/start/happy-new-year.gif"></a>-->
            	</span>
            <?php endif; ?>
            <?php if ($lang == 'en-gb') : ?>
                 <span id="Logo">
            		<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" width="209" height="107">
						<param name="allowScriptAccess" value="sameDomain" />
						<param name="allowFullScreen" value="false" />
						<param name="movie" value="/templates/redesign/i/logo.swf" />
						<param name="quality" value="high" />
						<param name="wmode" value="transparent" />
						<param name="bgcolor" value="#ffffff" />
						<embed src="/templates/redesign/i/logo.swf" quality="high" wmode="transparent" bgcolor="#ffffff" width="209" height="107" name="logo" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" />
					</object>
					<a href="/en"></a>
            	</span>
            <?php endif; ?>
        <?php endif; ?>

        <div id="nav">
            <div class="mb15 clearFix">
                <div class="Links clearFix">
                    <?php if ($lang == 'ru-ru') : ?>
                        <a class="home" href="/ru"></a>
                    <?php endif; ?>
                    <?php if ($lang == 'en-gb') : ?>
                        <a class="home" href="/en"></a>
                    <?php endif; ?>
                    <?php if ($lang == 'ru-ru') : ?>
                        <a class="sitemap" href="/ru/sitemap"></a>
                    <?php endif; ?>
                    <?php if ($lang == 'en-gb') : ?>
                        <a class="sitemap" href="/en/sitemap"></a>
                    <?php endif; ?>
                    <a class="email" href="mailto:info@hrtsm.ru"></a>
                </div>
                <div class="LangSwith">
                    <?php if ($lang == 'ru-ru') : ?>
                        <span>Rus</span>
                        <i>|</i>
                        <a href="/en">Eng</a>
                    <?php endif; ?>
                    <?php if ($lang == 'en-gb') : ?>
                        <a href="/ru">Rus</a>
                        <i>|</i>
                        <span>Eng</span>
                    <?php endif; ?>
                </div>
<!--<a class="ml30" style="color: #8E29AD;" target="_blank" href="/new-year.html"><b><i>Поздравляем Вас с Новым Годом!!!</i></b></a>-->

                <div class="social">
                    <jdoc:include type="modules" name="social" />
                </div>
            </div>
            <jdoc:include type="modules" name="topnav" />
            <?php if ($_REQUEST["id"] != 47) : ?>
                <?php if ($this->countModules( 'crumbs' )) : ?>
                    <div id="showcase">
                        <jdoc:include type="modules" name="crumbs" />
                    </div>
                <?php endif; ?>
            <?php endif; ?>
        </div>
    </div>
    <!--HEADER END-->


    <!--содержимое главной начало-->
    <?php if ($_REQUEST["id"] == 47) : ?>
    	<!--home_slogan BEGIN-->
    	<?php if ($this->countModules( 'home_slogan' )) : ?>
        	<div id="HomeSlogan" class="wrapper mb35 clearFix">
            	<jdoc:include type="modules" name="home_slogan" style="xhtml" />
            </div>
        <?php endif; ?>
        <!--home_slogan END-->
        <?php if ($this->countModules( 'home_center' )) : ?>
            <div id="HomeCenter">
                <div class="conteiner">
                    <div class="wrapper clearFix">
                        <jdoc:include type="modules" name="home_center" style="xhtml" />
                    </div>
                </div>
            </div>
        <?php endif; ?>
        <?php if ($this->countModules( 'home_bottom' )) : ?>
            <div id="HomeBottom" class="wrapper clearFix">
                <jdoc:include type="modules" name="home_bottom" style="xhtml" />
            </div>
        <?php endif; ?>
    <?php endif; ?>
    <!--содержимое главной конец-->


    <!--показываем содержимое только когда не на главной начало-->
    <?php if ($_REQUEST["id"] != 47) : ?>
        <!--ASIDE BEGIN-->
        <div id="Aside">
            <jdoc:include type="modules" name="aside" />
            <? echo $sape->return_links(2); ?> 
        </div>
        <!--ASIDE END-->
        <!--MAINCOL BEGIN-->
        <div id="MainCol">
            <?php if ($this->getBuffer( 'message' )) : ?>
 				<jdoc:include type="message" />
			<?php endif; ?>
            <jdoc:include type="component" />
             <?php if ($this->countModules( 'maincol' )) : ?>
                <div class="MaincolCenterModule clearFix">
                    <jdoc:include type="modules" name="maincol" style="xhtml" />
                </div>
             <?php endif; ?>
            <?php if ($_REQUEST["id"] == 59) : ?>
            	<!--<marquee behavior="scroll" direction="left" scrollamount="1" scrolldelay="5" truespeed>
					<a href="#"><img src="images/stories/partner/1.jpg" border="0" /></a>
					<a href="#"><img src="images/stories/partner/2.jpg" border="0" /></a>
<a href="#"><img src="images/stories/partner/3.jpg" border="0" /></a>
<a href="#"><img src="images/stories/partner/4.jpg" border="0" /></a>
<a href="#"><img src="images/stories/partner/5.jpg" border="0" /></a>
<a href="#"><img src="images/stories/partner/6.jpg" border="0" /></a>
<a href="#"><img src="images/stories/partner/7.jpg" border="0" /></a>
<a href="#"><img src="images/stories/partner/8.jpg" border="0" /></a>
<a href="#"><img src="images/stories/partner/9.jpg" border="0" /></a>
				</marquee>-->

<iframe width="693" height="650" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.ru/maps?f=q&amp;source=s_q&amp;hl=ru&amp;geocode=&amp;q=%D0%B3.+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0,+%D1%83%D0%BB.+%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+10,+%D1%81%D1%82%D1%80.2&amp;aq=&amp;sll=55.354135,40.297852&amp;sspn=23.501168,67.631836&amp;ie=UTF8&amp;hq=&amp;hnear=%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+%D1%83%D0%BB.,+10,+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0&amp;t=m&amp;z=15&amp;ll=55.724995,37.642572&amp;output=embed"></iframe><br /><small><a target="_blank" href="https://maps.google.ru/maps?f=q&amp;source=embed&amp;hl=ru&amp;geocode=&amp;q=%D0%B3.+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0,+%D1%83%D0%BB.+%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+10,+%D1%81%D1%82%D1%80.2&amp;aq=&amp;sll=55.354135,40.297852&amp;sspn=23.501168,67.631836&amp;ie=UTF8&amp;hq=&amp;hnear=%D0%9B%D0%B5%D1%82%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+%D1%83%D0%BB.,+10,+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0&amp;t=m&amp;z=15&amp;ll=55.724995,37.642572" style="color:#0000FF;text-align:left">Просмотреть увеличенную карту</a></small>

           	<?php endif; ?>
            <!--BEGIN BANNER-->
            <?php if ($_REQUEST["id"] == 49) : ?>
            <div class="Banner">
                <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="693" height="374" id="ban2" align="middle">
				    <param name="movie" value="/templates/redesign/i/ban2.swf" />
				    <param name="quality" value="high" />
				    <param name="bgcolor" value="#ffffff" />
				    <param name="play" value="true" />
				    <param name="loop" value="true" />
				    <param name="wmode" value="window" />
				    <param name="scale" value="showall" />
				    <param name="menu" value="true" />
				    <param name="devicefont" value="false" />
				    <param name="salign" value="" />
				    <param name="allowScriptAccess" value="sameDomain" />
				    <!--[if !IE]>-->
				    <object type="application/x-shockwave-flash" data="/templates/redesign/i/ban2.swf" width="693" height="374">
					    <param name="movie" value="/templates/redesign/i/ban2.swf" />
					    <param name="quality" value="high" />
					    <param name="bgcolor" value="#ffffff" />
					    <param name="play" value="true" />
					    <param name="loop" value="true" />
    					<param name="wmode" value="window" />
	    				<param name="scale" value="showall" />
		    			<param name="menu" value="true" />
			    		<param name="devicefont" value="false" />
				    	<param name="salign" value="" />
					    <param name="allowScriptAccess" value="sameDomain" />
				        <!--<![endif]-->
					    <a href="http://www.adobe.com/go/getflash">
						    <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" />
					    </a>
				        <!--[if !IE]>-->
				    </object>
				    <!--<![endif]-->
			    </object>
            </div>
            <?php endif; ?>
            <!--END BANNER-->
            <?php if ($this->countModules( 'maincol_bottom' )) : ?>
                <div class="MaincolModule clearFix">
                    <jdoc:include type="modules" name="maincol_bottom" style="xhtml" />
                </div>
            <?php endif; ?>
        </div>
        <!--MAINCOL END-->
    <?php endif; ?>
    <!--показываем содержимое только когда не на главной конец-->

<?php if ($_REQUEST["id"] == 715) : ?>
<style type="text/css">#MainCol{width:960px!important;} #wrapper{width:960px!important; padding: 0 0 0 0;} #Logo{margin: 0 56px 0 0!important;} #Header,#Footer{display: none;} body{background: #ffffff url(images/start/maket-big.jpg) no-repeat center top!important;}</style>
<?php endif; ?>

<!--FOOTER BEGIN-->
    <div class="clear"></div>
    <?php if ($_REQUEST["id"] == 47) : ?>
        <div id="Footer" class="wrapper clearFix">
    <?php endif; ?>
    <?php if ($_REQUEST["id"] != 47) : ?>
        <div id="Footer" class="clearFix">
    <?php endif; ?>
        <?php if ($this->countModules( 'footer' )) : ?>
            <jdoc:include type="modules" name="footer" style="xhtml" />
        <?php endif; ?>
        <!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
(function(w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter9087709 = new Ya.Metrika({id:9087709, enableAll: true, trackHash:true});
        }
        catch(e) { }
    });
})(window, "yandex_metrika_callbacks");
</script></div>
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript" defer="defer"></script>
<noscript><div><img src="//mc.yandex.ru/watch/9087709" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
    </div>
<!--FOOTER END-->


</div>
</body>
</html>