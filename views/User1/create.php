<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\TBUSER1 */

$this->title = 'Create Tbuser1';
$this->params['breadcrumbs'][] = ['label' => 'Tbuser1s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbuser1-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
