<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\TBEVENT */

$this->title = 'Create Tbevent';
$this->params['breadcrumbs'][] = ['label' => 'Tbevents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbevent-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
