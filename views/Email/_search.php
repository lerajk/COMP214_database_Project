<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TBEMAILSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbemail-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'EMAIL_ID') ?>

    <?= $form->field($model, 'EMA_TYPE') ?>

    <?= $form->field($model, 'EMA_EMAIL') ?>

    <?= $form->field($model, 'PERSON_ID') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
