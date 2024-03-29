<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TBUSER1 */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbuser1-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'USER_ID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'USE_NAME')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'USE_LOGIN')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'USE_PASSWORD')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'USE_EMAIL')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
