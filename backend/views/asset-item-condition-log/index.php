<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AssetItemConditionLogSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Asset Item Condition Logs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="asset-item-condition-log-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Asset Item Condition Log', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_asset_item_condition_log',
            'id_asset_item',
            'id_mst_status_condition',
            'condition_log_date',
            'condition_log_datetime',
            //'condition_log_notes:ntext',
            //'reported_by',
            //'reported_user_id',
            //'reported_ip_address',
            //'photo1',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
