<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\ADDRESS */

$this->title = 'Update Address: ' . $model->ADD_ID;
$this->params['breadcrumbs'][] = ['label' => 'Addresses', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ADD_ID, 'url' => ['view', 'id' => $model->ADD_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="address-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
