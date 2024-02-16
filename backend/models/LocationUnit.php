<?php

namespace backend\models;

/**
 * This is the model class for table "location_unit".
 *
 * @property int $id_location_unit
 * @property int $id_location
 * @property int $id_owner
 * @property string $label1
 * @property string $label2
 * @property string $label3
 * @property string $keterangan1
 * @property string $keterangan2
 * @property string $keterangan3
 */
class LocationUnit extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
	 
	public $attachfile1;
	 
    public static function tableName()
    {
        return 'location_unit';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_location', 'id_owner', 'keterangan1'], 'required'],
            [['id_location', 'id_owner', 'id_mst_status1', 'number_reg'], 'integer'],
            [['label1', 'label2', 'label3'], 'string', 'max' => 150],
            [['keterangan1', 'keterangan2', 'keterangan3'], 'string', 'max' => 250],
			[['attachfile1'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg, jpeg, pdf'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_location_unit' => 'Id Location Unit',
            'id_location' => 'Id Location',
            'id_owner' => 'Id Owner',
            'label1' => 'Label1',
            'label2' => 'Label2',
            'label3' => 'Label3',
            'keterangan1' => 'Keterangan',
            'keterangan2' => 'Keterangan2',
            'keterangan3' => 'Keterangan3',
        ];
    }
	
	public function uploadAttachFile1()
    {
        if ($this->validate()) {
			$filename = "attachfile-".$this->id_location_unit.'.'. $this->attachfile1->extension;
           // $this->attachfile1->saveAs('uploads/' . $this->attachfile1->baseName . '.' . $this->attachfile1->extension);
		    $this->attachfile1->saveAs('uploads/' . $filename);
            $this->keterangan2 = $filename;
			$this->save(false);
			return true;
        } else {
            return false;
        }
    }
	
    public function getOwner()
    {
        return $this->hasOne(Owner::className(), ['id_owner' => 'id_owner']);
    }
	
	public function getStatus1()
    {
        return $this->hasOne(MstStatus1::className(), ['id_mst_status' => 'id_mst_status1']);
    }
	
	public function getStatus1changeuser()
    {
        return $this->hasOne(User::className(), ['id' => 'status1_changed_user']);
    }
	
    public function getLocation()
    {
        return $this->hasOne(Location::className(), ['id_location' => 'id_location'])->
        orderBy(['location_name' => SORT_ASC]);
    }
}
