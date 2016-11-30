<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "TB_PERSON".
 *
 * @property string $PERSON_ID
 * @property string $PER_FIRST
 * @property string $PER_MIDDLE
 * @property string $PER_LAST
 * @property string $PER_SEX
 * @property string $PER_SIN
 * @property string $PER_ACTIVE
 * @property string $USER_ID
 */
class TBPERSON extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'TB_PERSON';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PER_FIRST', 'PER_LAST', 'PER_SEX', 'PER_ACTIVE', 'USER_ID'], 'required'],
            [['PERSON_ID', 'PER_ACTIVE', 'USER_ID'], 'number'],
            [['PER_FIRST', 'PER_MIDDLE', 'PER_LAST'], 'string', 'max' => 50],
            [['PER_SEX'], 'string', 'max' => 1],
            [['PER_SIN'], 'string', 'max' => 30],
            [['PERSON_ID'], 'unique'],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TBUSER1::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'PERSON_ID' => 'ID',
            'PER_FIRST' => 'First Name',
            'PER_MIDDLE' => 'Middle Name',
            'PER_LAST' => 'Last Name',
            'PER_SEX' => 'Sex',
            'PER_SIN' => 'SIN',
            'PER_ACTIVE' => 'Is Active',
            'USER_ID' => 'User Name',
        ];
    }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(TBUSER1::className(), ['USER_ID' => 'USER_ID']);
    }
}
