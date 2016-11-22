<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\User1Search */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tbuser1-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'USER_ID') ?>

    <?= $form->field($model, 'USE_NAME') ?>

    <?= $form->field($model, 'USE_LOGIN') ?>

    <?= $form->field($model, 'USE_PASSWORD') ?>

    <?= $form->field($model, 'USE_EMAIL') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
