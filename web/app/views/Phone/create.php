<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\TBPHONE */

$this->title = 'Create Tbphone';
$this->params['breadcrumbs'][] = ['label' => 'Tbphones', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbphone-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
