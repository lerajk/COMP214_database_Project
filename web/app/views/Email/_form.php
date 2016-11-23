<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TBEMAIL */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbemail-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'EMAIL_ID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EMA_TYPE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EMA_EMAIL')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PERSON_ID')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
