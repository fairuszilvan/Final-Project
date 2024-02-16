<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MaterialFinishDeleteSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="material-finish-delete-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_material_finish_delete') ?>

    <?= $form->field($model, 'id_material_finish') ?>

    <?= $form->field($model, 'id_material') ?>

    <?= $form->field($model, 'id_material_kategori1') ?>

    <?= $form->field($model, 'id_material_kategori2') ?>

    <?php // echo $form->field($model, 'id_material_kategori3') ?>

    <?php // echo $form->field($model, 'yard') ?>

    <?php // echo $form->field($model, 'kode') ?>

    <?php // echo $form->field($model, 'year') ?>

    <?php // echo $form->field($model, 'no_urut') ?>

    <?php // echo $form->field($model, 'no_urut_kode') ?>

    <?php // echo $form->field($model, 'no_splitting') ?>

    <?php // echo $form->field($model, 'barcode_kode') ?>

    <?php // echo $form->field($model, 'deskripsi') ?>

    <?php // echo $form->field($model, 'is_packing') ?>

    <?php // echo $form->field($model, 'id_basic_packing') ?>

    <?php // echo $form->field($model, 'id_material_in_item_proc') ?>

    <?php // echo $form->field($model, 'id_material_in') ?>

    <?php // echo $form->field($model, 'is_join_packing') ?>

    <?php // echo $form->field($model, 'join_info') ?>

    <?php // echo $form->field($model, 'id_gudang') ?>

    <?php // echo $form->field($model, 'alasan_hapus') ?>

    <?php // echo $form->field($model, 'created_id_user') ?>

    <?php // echo $form->field($model, 'created_date') ?>

    <?php // echo $form->field($model, 'created_ip_address') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
