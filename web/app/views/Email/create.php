<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\TBEMAIL */

$this->title = 'Create Tbemail';
$this->params['breadcrumbs'][] = ['label' => 'Tbemails', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbemail-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
