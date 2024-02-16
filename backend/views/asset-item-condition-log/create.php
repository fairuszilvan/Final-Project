<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\AssetItemConditionLog */

$this->title = 'Create Asset Item Condition Log';
$this->params['breadcrumbs'][] = ['label' => 'Asset Item Condition Logs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="asset-item-condition-log-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
