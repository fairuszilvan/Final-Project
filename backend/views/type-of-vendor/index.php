<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\TypeOfVendorSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Type Of Vendor';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="type-of-vendor-index box box-primary">

    <h1><?php //Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <div class="box-header with-border">
    <p>
        <?= Html::a('Create Type Of Vendor', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    </div>

    <div class="box-body table-responsive">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

//            'id_type_of_Vendor',
            'type_of_vendor',
            'description',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
    </div>
</div>
