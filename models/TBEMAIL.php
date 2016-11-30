<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "TB_EMAIL".
 *
 * @property string $EMAIL_ID
 * @property string $EMA_TYPE
 * @property string $EMA_EMAIL
 * @property string $PERSON_ID
 */
class TBEMAIL extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'TB_EMAIL';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['EMAIL_ID', 'EMA_EMAIL', 'PERSON_ID'], 'required'],
            [['EMAIL_ID', 'PERSON_ID'], 'number'],
            [['EMA_TYPE'], 'string', 'max' => 30],
            [['EMA_EMAIL'], 'string', 'max' => 50],
            [['EMAIL_ID'], 'unique'],
            [['PERSON_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TBPERSON::className(), 'targetAttribute' => ['PERSON_ID' => 'PERSON_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'EMAIL_ID' => 'Email  ID',
            'EMA_TYPE' => 'Email Type',
            'EMA_EMAIL' => 'Email',
            'PERSON_ID' => 'Contact Name',
        ];
    }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPerson()
    {
        return $this->hasOne(TBPERSON::className(), ['PERSON_ID' => 'PERSON_ID']);
    }
}
