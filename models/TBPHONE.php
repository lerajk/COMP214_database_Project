<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "TB_PHONE".
 *
 * @property string $PHONE_ID
 * @property string $PHO_TYPE
 * @property string $PHO_NUMBER
 * @property string $PERSON_ID
 */
class TBPHONE extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'TB_PHONE';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PHONE_ID', 'PHO_NUMBER', 'PERSON_ID'], 'required'],
            [['PHONE_ID', 'PERSON_ID'], 'number'],
            [['PHO_TYPE'], 'string', 'max' => 30],
            [['PHO_NUMBER'], 'string', 'max' => 50],
            [['PHONE_ID'], 'unique'],
            [['PERSON_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TBPERSON::className(), 'targetAttribute' => ['PERSON_ID' => 'PERSON_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'PHONE_ID' => 'Phone  ID',
            'PHO_TYPE' => 'Pho  Type',
            'PHO_NUMBER' => 'Pho  Number',
            'PERSON_ID' => 'Person  ID',
        ];
    }
}
