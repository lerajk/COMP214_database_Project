<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\TBPHONE */

$this->title = 'Update Tbphone: ' . $model->PHO_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbphones', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->PHO_ID, 'url' => ['view', 'id' => $model->PHO_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tbphone-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
