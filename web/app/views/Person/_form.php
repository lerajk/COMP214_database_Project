<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TBPERSON */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbperson-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'PERSON_ID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PER_FIRST')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PER_MIDDLE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PER_LAST')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PER_SEX')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PER_SIN')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PER_ACTIVE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'USER_ID')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
