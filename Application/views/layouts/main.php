<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="language" content="en" />
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/style.css" />
<title><?php echo $this->pageTitle; ?> - <?php echo Yii::app()->name; ?></title>
<?php $this->widget('application.components.langBox'); ?>
</head>

<body>
<div id="page">

	<div id="header">
		<div id="logo"><?php echo CHtml::encode(Yii::app()->name); ?></div>
		<div id="mainmenu">
			<?php $this->widget('application.components.MainMenu'); ?>
		</div><!-- mainmenu -->
	</div><!-- header -->
	
	<div style="clear:both;"></div>
	
	<div id="sidebar">
		<?php $this->widget('application.components.Sidebar'); ?>
	</div>
	
	<div id="content">
	<?php echo $content; ?>
	</div><!-- content -->
	
	<div style="clear:both;"></div>
	
	<div id="footer">
		<p>Copyright &copy; 2012</p>
		<p>All Rights Reserved.<?php echo Yii::powered(); ?></p>
	</div><!-- footer -->

</div><!-- page -->
</body>

</html>