<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TBEVENT */

$this->title = $model->EVENT_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbevents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="tbevent-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->EVENT_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->EVENT_ID], [
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
            'EVENT_ID',
            'EVE_NAME',
            'EVE_DATE_BEGIN',
            'EVE_DATE_END',
            'EVE_PLACE',
            'EVE_NOTES',
            'user.USE_NAME'
        ]
    ]) ?>

</div>
