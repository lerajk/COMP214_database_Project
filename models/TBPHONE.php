<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "TB_PHONE".
 *
 * @property string $PHO_ID
 * @property string $PHO_TYPE
 * @property string $PHO_NUMBER
 * @property string $PER_ID
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
            [['PHO_ID', 'PHO_NUMBER', 'PER_ID'], 'required'],
            [['PHO_ID', 'PER_ID'], 'number'],
            [['PHO_TYPE', 'PHO_NUMBER'], 'string', 'max' => 20],
            [['PHO_ID'], 'unique'],
            [['PER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TBPERSON::className(), 'targetAttribute' => ['PER_ID' => 'PER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'PHO_ID' => 'Pho  ID',
            'PHO_TYPE' => 'Pho  Type',
            'PHO_NUMBER' => 'Pho  Number',
            'PER_ID' => 'Per  ID',
        ];
    }
}
