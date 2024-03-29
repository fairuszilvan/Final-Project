<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\PurchaseRawSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="purchase-raw-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_purchase_raw') ?>

    <?= $form->field($model, 'tanggal_order') ?>

    <?= $form->field($model, 'id_supplier') ?>

    <?= $form->field($model, 'nomor_kontrak') ?>

    <?= $form->field($model, 'nomor_surat_jalan') ?>

    <?php // echo $form->field($model, 'month') ?>

    <?php // echo $form->field($model, 'year') ?>

    <?php // echo $form->field($model, 'total_tagihan') ?>

    <?php // echo $form->field($model, 'bayar_total_bayar') ?>

    <?php // echo $form->field($model, 'bayar_cara') ?>

    <?php // echo $form->field($model, 'bayar_tanggal_bayar') ?>

    <?php // echo $form->field($model, 'bayar_id_bank_pembayaran') ?>

    <?php // echo $form->field($model, 'bayar_bukti') ?>

    <?php // echo $form->field($model, 'status_purchasing') ?>

    <?php // echo $form->field($model, 'status_pembayaran') ?>

    <?php // echo $form->field($model, 'created_id_user') ?>

    <?php // echo $form->field($model, 'created_date') ?>

    <?php // echo $form->field($model, 'created_ip_address') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
