<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "TB_ADDRESS".
 *
 * @property string $ADDRESS_ID
 * @property string $ADD_TYPE
 * @property string $ADD_ADDRESS
 * @property string $ADD_CITY
 * @property string $ADD_STATE
 * @property string $ADD_COUNTRY
 * @property string $ADD_ZIP
 * @property string $PERSON_ID
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
            [['ADDRESS_ID', 'ADD_ADDRESS', 'PERSON_ID'], 'required'],
            [['ADDRESS_ID', 'PERSON_ID'], 'number'],
            [['ADD_TYPE', 'ADD_CITY', 'ADD_STATE', 'ADD_COUNTRY', 'ADD_ZIP'], 'string', 'max' => 30],
            [['ADD_ADDRESS'], 'string', 'max' => 80],
            [['ADDRESS_ID'], 'unique'],
            [['PERSON_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TBPERSON::className(), 'targetAttribute' => ['PERSON_ID' => 'PERSON_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ADDRESS_ID' => 'Address  ID',
            'ADD_TYPE' => 'Add  Type',
            'ADD_ADDRESS' => 'Add  Address',
            'ADD_CITY' => 'Add  City',
            'ADD_STATE' => 'Add  State',
            'ADD_COUNTRY' => 'Add  Country',
            'ADD_ZIP' => 'Add  Zip',
            'PERSON_ID' => 'Person  ID',
        ];
    }
}
