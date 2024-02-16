<?php

namespace backend\controllers;

use common\yiiautonumber\AutoNumber;
use common\utils\EncryptionDB;
use backend\models\Kabupaten;
use backend\models\Kecamatan;
use backend\models\Kelurahan;
use backend\models\Location;
use backend\models\LocationSearch;
use backend\models\LocationUnit;
use Yii;
use yii\filters\VerbFilter;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

/**
 * LocationController implements the CRUD actions for Location model.
 */
class SearchAssetController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Location models.
     * @return mixed
     */
    public function actionByLocation()
    {
        $searchModel = new LocationSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('by-location', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionByLocationSearch()
    {
        $searchModel = new LocationSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('by-location-result-search', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }


    public function actionLists($id)
    {
        $branches = Kabupaten::find()
            ->where(['id_propinsi' => $id])
            ->all();

        if (isset($branches) && count($branches) > 0) {
            foreach ($branches as $branch) {
                echo "<option value='", $branch->id_kabupaten . "'>" . $branch->nama_kabupaten . "</option>";
            }
        } else {
            echo "<option> Data Tidak Ke Load </option>";
        }
    }

    public function actionKecamatan($id)
    {
        $branches = Kecamatan::find()
            ->where(['id_kabupaten' => $id])
            ->all();

        if (isset($branches) && count($branches) > 0) {
            foreach ($branches as $branch) {
                echo "<option value='", $branch->id_kecamatan . "'>" . $branch->nama_kecamatan . "</option>";
            }
        } else {
            echo "<option> Data Tidak Ke Load </option>";
        }
    }

    public function actionKelurahan($id)
    {
        $branches = Kelurahan::find()
            ->where(['id_kecamatan' => $id])
            ->all();

        if (isset($branches) && count($branches) > 0) {
            foreach ($branches as $branch) {
                echo "<option value='", $branch->id_kelurahan . "'>" . $branch->nama_kelurahan . "</option>";
            }
        } else {
            echo "<option> Data Tidak Ke Load </option>";
        }
    }
    public function actionNewSurveyUnit($c)
    {
        $model = new LocationUnit();
		$id_location = EncryptionDB::staticEncryptor('decrypt', $c);
        $model->id_location = $id_location;
        //$model->label1 = AutoNumber::generate('????');

        // $prefik= date('dmY'); 
        // $hasil = LocationUnit::findBySql("SELECT max(label1) as label1 from location_unit where id_location_unit like '$prefik%'");
        $number = LocationUnit::findBySql("SELECT max(number_reg) as number_reg from location_unit")->one();
        $noUrut = $number->number_reg + 1; // MENAMBAH +1
        $model->label1 = $noUrut;
        $model->number_reg = $noUrut;
        // $genNoReg= $prefik.sprintf("%04s",$noUrut + 1);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['by-location']);
        }

        return $this->render('new-survey-unit', [
            'model' => $model,
            // 'genNoReg' => $genNoReg,
        ]);
    }

    /**
     * Finds the Location model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Location the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Location::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
