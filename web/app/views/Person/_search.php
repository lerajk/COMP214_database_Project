<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TBPERSONSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbperson-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'PERSON_ID') ?>

    <?= $form->field($model, 'PER_FIRST') ?>

    <?= $form->field($model, 'PER_MIDDLE') ?>

    <?= $form->field($model, 'PER_LAST') ?>

    <?= $form->field($model, 'PER_SEX') ?>

    <?php // echo $form->field($model, 'PER_SIN') ?>

    <?php // echo $form->field($model, 'PER_ACTIVE') ?>

    <?php // echo $form->field($model, 'USER_ID') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
