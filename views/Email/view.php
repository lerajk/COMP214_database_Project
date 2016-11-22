<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TBEMAIL */

$this->title = $model->EMA_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbemails', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbemail-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->EMA_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->EMA_ID], [
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
            'EMA_ID',
            'EMA_TYPE',
            'EMA_EMAIL:email',
            'PER_ID',
        ],
    ]) ?>

</div>
