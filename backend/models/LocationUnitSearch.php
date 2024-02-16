<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;

/**
 * LocationUnitSearch represents the model behind the search form of `backend\models\LocationUnit`.
 */
class LocationUnitSearch extends LocationUnit
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_location_unit', 'id_owner','id_location'], 'integer'],
            [['label1', 'label2', 'label3', 'keterangan1', 'keterangan2', 'keterangan3'
                ,'id_mst_status1','locationAddress'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public $locationAddress;

    public function search($params)
    {
        $query = LocationUnit::find();
        $query->joinWith(['location']);

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        $dataProvider->sort->attributes['location'] = [
            // The tables are the ones our relation are configured to
            // in my case they are prefixed with "tbl_"
            'asc' => ['location.location_name' => SORT_ASC],
            'desc' => ['location.location_name' => SORT_DESC],
        ];

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_location_unit' => $this->id_location_unit,
            'location.id_location' => $this->id_location,
            'id_owner' => $this->id_owner,
            'id_mst_status1' => $this->id_mst_status1,
        ]);

        $query->andFilterWhere(['like', 'label1', $this->label1])
            ->andFilterWhere(['like', 'label2', $this->label2])
            ->andFilterWhere(['like', 'label3', $this->label3])
            ->andFilterWhere(['like', 'keterangan1', $this->keterangan1])
            ->andFilterWhere(['like', 'keterangan2', $this->keterangan2])
            ->andFilterWhere(['like', 'location.address', $this->locationAddress])
            ->andFilterWhere(['like', 'id_mst_status1', $this->id_mst_status1])
            ->andFilterWhere(['like', 'keterangan3', $this->keterangan3]);

        return $dataProvider;
    }
}
