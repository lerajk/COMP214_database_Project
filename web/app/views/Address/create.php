<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\TBADDRESS */

$this->title = 'Create Tbaddress';
$this->params['breadcrumbs'][] = ['label' => 'Tbaddresses', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbaddress-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
