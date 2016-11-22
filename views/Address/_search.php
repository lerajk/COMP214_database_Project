<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\AddressSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="address-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'ADD_ID') ?>

    <?= $form->field($model, 'ADD_TYPE') ?>

    <?= $form->field($model, 'ADD_ADDRESS') ?>

    <?= $form->field($model, 'ADD_CITY') ?>

    <?= $form->field($model, 'ADD_STATE') ?>

    <?php // echo $form->field($model, 'ADD_COUNTRY') ?>

    <?php // echo $form->field($model, 'ADD_ZIP') ?>

    <?php // echo $form->field($model, 'PER_ID') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
