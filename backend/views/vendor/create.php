<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Supplier */

$this->title = 'Tambah Supplier';
$this->params['breadcrumbs'][] = ['label' => 'Suppliers', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="supplier-create">
	<?php /*
    <h1><?= Html::encode($this->title) ?></h1>
	*/ ?>
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
