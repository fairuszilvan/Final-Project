<?php

use common\labeling\CommonActionLabelEnum;
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MstStatus1 */
/* @var $form yii\widgets\ActiveForm */
?>
<style>
    div.required label.control-label:after {
        content: " *";
        color: red;
    }
</style>

<?php
//CSS Ini digunakan untuk overide jarak antar form biar tidak terlalu jauh
?>
<style>
    .form-group {
        margin-bottom: 0px;
    }
</style>
<div class="mst-status5-form box box-success">
    <div class="box-header with-border">
        <p>
            <?= Html::a('<< '.CommonActionLabelEnum::BACK, ['index'], ['class' => 'btn btn-warning']) ?>
        </p>
    </div>

    <div class="box-header with-border">
        <?php $form = \yii\bootstrap\ActiveForm::begin([
            'layout' => 'horizontal',
            //'action' => ['index1'],
            //'method' => 'get',
            'fieldConfig' => [
                'horizontalCssClasses' => [
                    'label' => 'col-sm-2',
                    'offset' => 'col-sm-offset-2',
                    'wrapper' => 'col-sm-8',
                ],
            ],
        ]); ?>

    <?= $form->field($model, 'mst_status')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'is_active')->textInput() ?>

        <div class="box-footer">
            <div class="form-group">
                <?= Html::submitButton(CommonActionLabelEnum::SAVE, ['class' => 'btn btn-success']) ?>
            </div>
        </div>

    <?php ActiveForm::end(); ?>

</div>
