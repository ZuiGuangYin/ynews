<?php echo CHtml::beginForm(); ?>

<?php echo CHtml::errorSummary($form); ?>

<p>
	<?php echo CHtml::activeLabelEx($form, 'title'); ?>
	<?php echo CHtml::activeTextField($form, 'title'); ?>
</p>

<p>
	<?php echo CHtml::activeLabelEx($form, 'categoryId'); ?>
	<?php echo CHtml::activeDropDownList($form, 'categoryId', Category::getCategories()); ?>
</p>

<p>
	<?php echo CHtml::activeLabelEx($form, 'content'); ?>
	<?php $this->widget('application.extensions.editor.CKkceditor',array(
			"model"=>$form,                # Data-Model
			"attribute"=>'content',         # Attribute in the Data-Model
			"height"=>'400px',
			"width"=>'100%',
			"filespath"=>Yii::app()->basePath."/../up/",
			"filesurl"=>Yii::app()->baseUrl."/up/",
		) );  ?>
	<?php //echo CHtml::activeTextArea($form, 'content'); ?>
</p>

<p>
<?php echo CHtml::submitButton('发表'); ?>
</p>

<?php echo CHtml::endForm(); ?>