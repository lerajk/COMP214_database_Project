<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "TB_EMAIL".
 *
 * @property string $EMA_ID
 * @property string $EMA_TYPE
 * @property string $EMA_EMAIL
 * @property string $PER_ID
 *
 * @property TBPERSON $pER
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
            [['EMA_ID', 'EMA_EMAIL', 'PER_ID'], 'required'],
            [['EMA_ID', 'PER_ID'], 'number'],
            [['EMA_TYPE'], 'string', 'max' => 20],
            [['EMA_EMAIL'], 'string', 'max' => 30],
            [['EMA_ID'], 'unique'],
            [['PER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TBPERSON::className(), 'targetAttribute' => ['PER_ID' => 'PER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'EMA_ID' => 'Ema  ID',
            'EMA_TYPE' => 'Ema  Type',
            'EMA_EMAIL' => 'Ema  Email',
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
