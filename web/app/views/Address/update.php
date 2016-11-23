<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\TBADDRESS */

$this->title = 'Update Tbaddress: ' . $model->ADDRESS_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbaddresses', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ADDRESS_ID, 'url' => ['view', 'id' => $model->ADDRESS_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tbaddress-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
