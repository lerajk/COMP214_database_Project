<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TBEVENT */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbevent-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'EVENT_ID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EVE_NAME')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EVE_DATE_BEGIN')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EVE_DATE_END')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EVE_PLACE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EVE_NOTES')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'USER_ID')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
