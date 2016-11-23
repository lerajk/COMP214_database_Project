<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TBADDRESSSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tbaddresses';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbaddress-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Tbaddress', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'ADDRESS_ID',
            'ADD_TYPE',
            'ADD_ADDRESS',
            'ADD_CITY',
            'ADD_STATE',
            // 'ADD_COUNTRY',
            // 'ADD_ZIP',
            // 'PERSON_ID',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
