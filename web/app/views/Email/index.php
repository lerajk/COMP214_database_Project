<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TEMAILSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tbemails';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbemail-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Tbemail', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'EMAIL_ID:email',
            'EMA_TYPE',
            'EMA_EMAIL:email',
            'PERSON_ID',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
