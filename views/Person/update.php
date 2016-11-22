<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\TBPERSON */

$this->title = 'Update Tbperson: ' . $model->PER_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbpeople', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->PER_ID, 'url' => ['view', 'id' => $model->PER_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tbperson-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
