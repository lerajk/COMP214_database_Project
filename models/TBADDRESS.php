<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "TB_ADDRESS".
 *
 * @property string $ADD_ID
 * @property string $ADD_TYPE
 * @property string $ADD_ADDRESS
 * @property string $ADD_CITY
 * @property string $ADD_STATE
 * @property string $ADD_COUNTRY
 * @property string $ADD_ZIP
 * @property string $PER_ID
 *
 * @property TBPERSON $pER
 */
class TBADDRESS extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'TB_ADDRESS';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ADD_ID', 'ADD_ADDRESS', 'PER_ID'], 'required'],
            [['ADD_ID', 'PER_ID'], 'number'],
            [['ADD_TYPE', 'ADD_CITY', 'ADD_STATE', 'ADD_COUNTRY', 'ADD_ZIP'], 'string', 'max' => 20],
            [['ADD_ADDRESS'], 'string', 'max' => 60],
            [['ADD_ID'], 'unique'],
            [['PER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TBPERSON::className(), 'targetAttribute' => ['PER_ID' => 'PER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ADD_ID' => 'Add  ID',
            'ADD_TYPE' => 'Add  Type',
            'ADD_ADDRESS' => 'Add  Address',
            'ADD_CITY' => 'Add  City',
            'ADD_STATE' => 'Add  State',
            'ADD_COUNTRY' => 'Add  Country',
            'ADD_ZIP' => 'Add  Zip',
            'PER_ID' => 'Per  ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPER()
    {
        return $this->hasOne(TBPERSON::className(), ['PER_ID' => 'PER_ID']);
    }
}
