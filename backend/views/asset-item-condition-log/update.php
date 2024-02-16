<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\AssetItemConditionLog */

$this->title = 'Update Asset Item Condition Log: ' . $model->id_asset_item_condition_log;
$this->params['breadcrumbs'][] = ['label' => 'Asset Item Condition Logs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_asset_item_condition_log, 'url' => ['view', 'id' => $model->id_asset_item_condition_log]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="asset-item-condition-log-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
