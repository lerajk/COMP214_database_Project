<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TBEVENTSSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tbevents';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbevent-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Tbevent', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'EVENT_ID',
            'EVE_NAME',
            'EVE_DATE_BEGIN',
            'EVE_DATE_END',
            'EVE_PLACE',
            // 'EVE_NOTES',
            // 'USER_ID',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
