<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\TBEMAIL */

$this->title = 'Update Tbemail: ' . $model->EMA_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbemails', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->EMA_ID, 'url' => ['view', 'id' => $model->EMA_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tbemail-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
