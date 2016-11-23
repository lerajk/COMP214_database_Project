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
            [['PERSON_ID', 'PER_FIRST', 'PER_LAST', 'PER_SEX', 'PER_ACTIVE', 'USER_ID'], 'required'],
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
            'PERSON_ID' => 'Person  ID',
            'PER_FIRST' => 'Per  First',
            'PER_MIDDLE' => 'Per  Middle',
            'PER_LAST' => 'Per  Last',
            'PER_SEX' => 'Per  Sex',
            'PER_SIN' => 'Per  Sin',
            'PER_ACTIVE' => 'Per  Active',
            'USER_ID' => 'User  ID',
        ];
    }
}
