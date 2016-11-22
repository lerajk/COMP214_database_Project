<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\TBUSER1 */

$this->title = 'Update Tbuser1: ' . $model->USER_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbuser1s', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->USER_ID, 'url' => ['view', 'id' => $model->USER_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tbuser1-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
