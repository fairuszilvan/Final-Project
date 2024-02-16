<?php

namespace backend\controllers;

use backend\models\Owner;
use backend\models\OwnerSearch;
use Yii;
use yii\filters\VerbFilter;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use common\labeling\TransactionLabel;

/**
 * OwnerController implements the CRUD actions for Owner model.
 */
class OwnerController extends Controller
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
     * Lists all Owner models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new OwnerSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Owner model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Owner model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Owner();

        /*
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_owner]);
        }
        */

        if ($model->load(Yii::$app->request->post())) {
            if($model->save()){
                $model->attachfile1 = \yii\web\UploadedFile::getInstance($model, 'file1');
                //$model->uploadAttachFile1();
                if ($model->uploadAttachFile1()) {
                    Yii::$app->session->setFlash('success', TransactionLabel::msgUploadSuccess("file bukti pendukung"));
                     
                }
                return $this->redirect(['view', 'id' => $model->id_owner]);
            }
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /*
    public function beforeAction($action) 
    { 
        $this->enableCsrfValidation = false; 
        return parent::beforeAction($action); 
    }
    */

    public function actionCreateDebug()
    {
        $this->layout = false;

        if(isset($_POST["ok"])){
            echo "test"; exit();
        }

        if(isset($_POST["ok2"])){
            echo "test ok2 masuk"; exit();
        }
        return $this->render('create_mock', [
            
        ]);
    }

    /**
     * Updates an existing Owner model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        /*
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_owner]);
        }
        */
        $file1 = $model->file1;
        if ($model->load(Yii::$app->request->post())) {
            if($model->save()){
                $model->attachfile1 = \yii\web\UploadedFile::getInstance($model, 'file1');
                if ($model->uploadAttachFile1()) {
                    Yii::$app->session->setFlash('success', TransactionLabel::msgUploadSuccess("file bukti pendukung"));
                }else{
                    //Jika tidak ada upload maka file yang lama dimaintanenace
                    $model->file1 = $file1;
                    $model->save(false);
                }
                return $this->redirect(['view', 'id' => $model->id_owner]);
            }
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Owner model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Owner model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Owner the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Owner::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
