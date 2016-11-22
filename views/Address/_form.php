<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ADDRESS */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="address-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ADD_ID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ADD_TYPE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ADD_ADDRESS')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ADD_CITY')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ADD_STATE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ADD_COUNTRY')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ADD_ZIP')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PER_ID')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
