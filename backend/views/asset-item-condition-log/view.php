<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\AssetItemConditionLog */

$this->title = $model->id_asset_item_condition_log;
$this->params['breadcrumbs'][] = ['label' => 'Asset Item Condition Logs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="asset-item-condition-log-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_asset_item_condition_log], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_asset_item_condition_log], [
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
            'id_asset_item_condition_log',
            'id_asset_item',
            'id_mst_status_condition',
            'condition_log_date',
            'condition_log_datetime',
            'condition_log_notes:ntext',
            'reported_by',
            'reported_user_id',
            'reported_ip_address',
            'photo1',
        ],
    ]) ?>

</div>
