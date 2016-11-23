<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TBADDRESS */

$this->title = $model->ADDRESS_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbaddresses', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbaddress-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->ADDRESS_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->ADDRESS_ID], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'ADDRESS_ID',
            'ADD_TYPE',
            'ADD_ADDRESS',
            'ADD_CITY',
            'ADD_STATE',
            'ADD_COUNTRY',
            'ADD_ZIP',
            'PERSON_ID',
        ],
    ]) ?>

</div>
