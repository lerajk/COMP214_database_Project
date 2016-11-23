<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TBPHONE */

$this->title = $model->PHONE_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbphones', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbphone-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->PHONE_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->PHONE_ID], [
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
            'PHONE_ID',
            'PHO_TYPE',
            'PHO_NUMBER',
            'PERSON_ID',
        ],
    ]) ?>

</div>
