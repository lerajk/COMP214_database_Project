<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PhoneSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbphone-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'PHO_ID') ?>

    <?= $form->field($model, 'PHO_TYPE') ?>

    <?= $form->field($model, 'PHO_NUMBER') ?>

    <?= $form->field($model, 'PER_ID') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
