<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TBPHONE */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbphone-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'PHO_ID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PHO_TYPE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PHO_NUMBER')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PER_ID')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
