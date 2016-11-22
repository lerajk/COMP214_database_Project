<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PersonSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tbpeople';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbperson-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Tbperson', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'PER_ID',
            'PER_FIRST',
            'PER_MIDDLE',
            'PER_LAST',
            'PER_SEX',
            // 'PER_SIN',
            // 'PER_ACTIVE',
            // 'USER_ID',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
