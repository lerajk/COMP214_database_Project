<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TBPHONESearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tbphones';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbphone-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Tbphone', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'PHONE_ID',
            'PHO_TYPE',
            'PHO_NUMBER',
            'PERSON_ID',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
