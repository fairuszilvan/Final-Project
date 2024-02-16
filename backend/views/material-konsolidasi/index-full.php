<?php

use yii\helpers\Html;
//use yii\grid\GridView;
use kartik\grid\GridView;


/* @var $this yii\web\View */
/* @var $searchModel backend\models\MaterialFinishSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Konsolidasi - Barang Jadi dengan '.$subtitle;
$this->params['breadcrumbs'][] = $this->title;
?>





        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>

<?php
$dataListMaterial = ['' => 'Pilih'] + \yii\helpers\ArrayHelper::map(\backend\models\Material::find()
        ->orderBy([
            'nama' => SORT_ASC
            ])
        //->where(['id_parent_topnav' => 0])
        ->all(), 'id_material', 'nama');

$dataListMaterialKategori1 = ['' => 'Pilih'] + \yii\helpers\ArrayHelper::map(\backend\models\MaterialKategori1::find()
        //->where(['id_parent_topnav' => 0])
        ->orderBy([
            'nama' => SORT_ASC
            ])
        ->all(), 'id_material', 'nama');

$dataListMaterialKategori2 = ['' => 'Pilih'] + \yii\helpers\ArrayHelper::map(\backend\models\MaterialKategori2::find()
        //->where(['id_parent_topnav' => 0])
        ->orderBy([
            'nama' => SORT_ASC
            ])
        ->all(), 'id_material', 'nama');

$dataListMaterialKategori3 = ['' => 'Pilih'] + \yii\helpers\ArrayHelper::map(\backend\models\MaterialKategori3::find()
        //->where(['id_parent_topnav' => 0])
         ->orderBy([
            'nama' => SORT_ASC
            ])
        ->all(), 'id_material', 'nama');

$dataListGudang = ['' => 'Pilih'] + \yii\helpers\ArrayHelper::map(\backend\models\Gudang::find()
        //->where(['id_parent_topnav' => 0])
         ->orderBy([
            'nama_gudang' => SORT_ASC
            ])
        ->all(), 'id_gudang', 'nama_gudang');

$dataListSumberData = ['' => 'Pilih'] + ['0' => 'Manual Input', '1' => 'Generate dr Produksi'];
/*
$dataListSupplier = ['' => 'Pilih'] + \yii\helpers\ArrayHelper::map(\backend\models\Supplier::find()
        //->where(['id_parent_topnav' => 0])
        ->orderBy([
            'name_company' => SORT_ASC
            ])
        ->all(), 'id_supplier', 'name_company');
        */
?>

<?php
$this->registerCssFile("@web/plugins/fancybox/jquery.fancybox.css", ['position' => \yii\web\View::POS_HEAD]);
$this->registerJsFile('@web/plugins/fancybox/jquery.fancybox.js', ['depends' => [\yii\web\JqueryAsset::className()]]);
?>
<?php
$this->registerJs(
    '  
    $(".various").fancybox({
        maxWidth    : 800,
        maxHeight   : 700,
        fitToView   : false,
        // width        : "70%",
        // height       : "70%",
        autoSize    : true,
        closeClick  : false,
        openEffect  : "none",
        closeEffect : "none"
    });
        '
);
?>
<?php
if($t==3){
?>
    <div class="callout callout-info">

    <p>Menu ini digunakan untuk revisi kode yang berawalan 001. <br>
    Silakan klik tombol berikut ini untuk reset ke dengan awalan 201.<br>
    <?php
        $button =  Html::a(
            '<i class="fa fa-fw fa-check"></i> Repair All',
            ['repair-kode', 't' => $t],
            ['class' => 'btn btn-danger']
        );
        echo $button;
    ?>
    </p>
    </div>
<?php } ?>
    <div style="overflow-x: auto; width: 100%;">
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'options' => ['style' => ['font-size'=>'12px']],
            'filterModel' => $searchModel,
            'panel' => ['type' => 'primary', 'heading' => '<span class="fa fa-edit"></span> ' . $this->title],
            'export' => [
                'label' => 'Export',
            ],
            'pager' => [
                'firstPageLabel' => 'First',
                'lastPageLabel'  => 'Last'
            ],
            'exportConfig' => [
                GridView::EXCEL => [
                    'label' => 'Save as EXCEL',
                    'iconOptions' => ['class' => 'text-success'],
                    'showHeader' => true,
                    'showPageSummary' => true,
                    'showFooter' => true,
                    'showCaption' => true,
                    'filename' => 'Data ' . $this->title,
                    'alertMsg' => 'Export Data to Excel.',
                    'mime' => 'application/vnd.ms-excel',
                    'config' => [
                        'worksheet' => 'ExportWorksheet',
                        'cssFile' => ''
                    ],

                ],
                GridView::CSV => [
                    'label' => 'Save as CSV',
                    'iconOptions' => ['class' => 'text-primary'],
                    'showHeader' => true,
                    'showPageSummary' => true,
                    'showFooter' => true,
                    'showCaption' => true,
                    'filename' => 'Data CSV ' . $this->title,
                    'alertMsg' => 'Export Data to CSV.',
                    'options' => ['title' => 'Comma Separated Values'],
                    'mime' => 'application/csv',
                    'config' => [
                        'colDelimiter' => ",",
                        'rowDelimiter' => "\r\n",
                    ],
                ],
            ],
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                [
                    'attribute' => 'id_material',
                    'format' => 'raw',
                    'value' => function ($data) {
                        if (isset($data->mater)) {
                            return $data->mater->nama;
                        } else {
                            return "--";
                        }
                    },
                    'filter'=>Html::activeDropDownList($searchModel, 'id_material', $dataListMaterial, ['class' => 'form-control']),
                ],
                [
                    'attribute' => 'id_material_kategori1',
                    'format' => 'raw',
                    'value' => function ($data) {
                        if (isset($data->materialKategori1)) {
                            return $data->materialKategori1->nama;
                        } else {
                            return "--";
                        }
                    },
                    'filter'=>Html::activeDropDownList($searchModel, 'id_material_kategori1', $dataListMaterialKategori1, ['class' => 'form-control']),
                ],
                [
                    'attribute' => 'id_material_kategori2',
                    'format' => 'raw',
                    'value' => function ($data) {
                        if (isset($data->materialKategori2)) {
                            return $data->materialKategori2->nama;
                        } else {
                            return "--";
                        }
                    },
                    'filter'=>Html::activeDropDownList($searchModel, 'id_material_kategori2', $dataListMaterialKategori2, ['class' => 'form-control']),
                ],
                [
                    'attribute' => 'id_material_kategori3',
                    'format' => 'raw',
                    'value' => function ($data) {
                        if (isset($data->materialKategori3)) {
                            return $data->materialKategori3->nama;
                        } else {
                            return "--";
                        }
                    },
                    'filter'=>Html::activeDropDownList($searchModel, 'id_material_kategori3', $dataListMaterialKategori3, ['class' => 'form-control']),
                ],
                //'yard',
                [
                    
                    'attribute' => 'yard',
                    'format' => 'raw',
                    'value' => function ($data) {
                        if ($data->is_join_packing){
                            return $data->yard. '<br>
                            <span class="label label-warning">['.$data->join_info."]</span>";
                        }else{
                            return $data->yard;
                        }
                    },

                ],
                
                'year',
                'no_urut',
                'kode',
                'barcode_kode',
                [
                    'attribute' => 'id_gudang',
                    'format' => 'raw',
                    'value' => function ($data) {
                        if (isset($data->gudang)) {
                            return $data->gudang->nama_gudang;
                        } else {
                            return "--";
                        }
                    },
                    'filter'=>Html::activeDropDownList($searchModel, 'id_gudang', $dataListGudang, ['class' => 'form-control']),
                ],
                //'keterangan',
                //'no_urut_kode',
                //'barcode_kode',
                //'deskripsi',
                //'is_packing',
                //'created_date',
                //'created_ip_address',
                /*
                [
                    'class' => 'yii\grid\ActionColumn',
                    
                ],
                */
                /*
                [
                    'class' => 'yii\grid\ActionColumn',
                    'template' => '{view} {update} {delete} {link}',
                    'buttons' => [
                        'update' => function ($url,$model) {
                            
                            return Html::a(
                                '<span class="glyphicon glyphicon-user"></span>', 
                                $url);
                        },
                        'link' => function ($url,$model,$key) {
                            return Html::a('Action', $url);
                        },
                    ],
                ],
                */
                [
                    'attribute' => 'id_material_in_item_proc',
                    'header' => 'Sumber Data',
                    'format' => 'raw',
                    'value' => function ($model) {
                        if ($model->id_material_in_item_proc == 0){
                            return '<span class="label label-warning">Ditambahkan Manual</span>';
                        } else {
                            return '<span class="label label-success">Generate dr Produksi</span>';
                        }
                    },
                    'filter'=>Html::activeDropDownList($searchModel, 'id_material_in_item_proc', $dataListSumberData, ['class' => 'form-control']),
                ],
                [
                    'label' => 'View',
                    'format' => 'raw',
                    //'value' => function ($data) use ($ip) {
                    'value' => function ($data) {
                        //$i = \common\utils\EncryptionDB::encryptor('encrypt',$data->id_mutasi_stock);
                        $i = $data->id_material_finish;
                        return Html::a(
                            '<i class="fa fa-fw fa-eye"></i> View',
                            ['material-finish/view', 'id' => $i],
                            ['class' => 'btn btn-success btn-xs various fancybox.ajax']
                        );

                    
                    }
                ],
                [
                    'label' => 'Regenerate Barcode',
                    'format' => 'raw',
                    //'value' => function ($data) use ($ip) {
                    'value' => function ($data) {
                        //$i = \common\utils\EncryptionDB::encryptor('encrypt',$data->id_mutasi_stock);
                        $i = $data->id_material_finish;
                        return Html::a(
                            '<i class="fa fa-fw fa-print"></i>Re-Generate',
                            ['material-konsolidasi/regenerate', 'id' => $i],
                            ['class' => 'btn btn-danger btn-xs various fancybox.ajax']
                        );

                    
                    }
                ],
                /*
                [
                    'class' => 'yii\grid\ActionColumn',
                    'template' => '{view} {update} {delete} {link}',
                    'header' => 'Aksi',
                    'buttons' => [
                        'update' => function ($url,$model) {
                            if ($model->id_material_in_item_proc == 0){
                                return Html::a(
                                '<span class="glyphicon glyphicon-pencil"></span>', 
                                $url);
                            }else{
                                return "";
                            }
                        },
                        'delete' => function ($url,$model) {
                            if ($model->id_material_in_item_proc == 0){
                                return Html::a('', $url,
                                  [
                                     'data' => [
                                         'method' => 'post',
                                          // use it if you want to confirm the action
                                          'confirm' => 'Are you sure?',
                                      ],
                                      'class' => 'glyphicon glyphicon-trash'
                                   ]
                                 );

                                return Html::a(
                                '<span class="glyphicon glyphicon-trash"></span>', 
                                $url);
                                return ( Html::a('<span class="glyphicon glyphicon-trash"></span>', true, ['class' => 'ajaxDelete', 'delete-url' => $url, 'pjax-container' => 'pjax-list', 'title' => Yii::t('app', 'Delete'), 'data-pjax' => '0']));
                            }else{
                                return "";
                            }
                        },
                    ],
                ],
                */
            ],
        ]); ?>
    </div>

