<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\TBUSER1 */

$this->title = $model->USER_ID;
$this->params['breadcrumbs'][] = ['label' => 'Tbuser1s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbuser1-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->USER_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->USER_ID], [
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
            'USER_ID',
            'USE_NAME',
            'USE_LOGIN',
            'USE_PASSWORD',
            'USE_EMAIL:email',
        ],
    ]) ?>

</div>
