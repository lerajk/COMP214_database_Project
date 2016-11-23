<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\TBEVENT */

$this->title = 'Update Tbevent: ' . $model->EVENT_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbevents', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->EVENT_ID, 'url' => ['view', 'id' => $model->EVENT_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tbevent-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
