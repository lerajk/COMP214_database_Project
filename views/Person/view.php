<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TBPERSON */

$this->title = $model->PER_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbpeople', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbperson-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->PER_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->PER_ID], [
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
            'PER_ID',
            'PER_FIRST',
            'PER_MIDDLE',
            'PER_LAST',
            'PER_SEX',
            'PER_SIN',
            'PER_ACTIVE',
            'USER_ID',
        ],
    ]) ?>

</div>
