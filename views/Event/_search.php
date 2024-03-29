<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TBEVENTSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbevent-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'EVENT_ID') ?>

    <?= $form->field($model, 'EVE_NAME') ?>

    <?= $form->field($model, 'EVE_DATE_BEGIN') ?>

    <?= $form->field($model, 'EVE_DATE_END') ?>

    <?= $form->field($model, 'EVE_PLACE') ?>

    <?php // echo $form->field($model, 'EVE_NOTES') ?>

    <?php // echo $form->field($model, 'USER_ID') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
