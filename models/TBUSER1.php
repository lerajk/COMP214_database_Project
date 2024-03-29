<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "TB_USER_1".
 *
 * @property string $USER_ID
 * @property string $USE_NAME
 * @property string $USE_LOGIN
 * @property string $USE_PASSWORD
 * @property string $USE_EMAIL
 *
 * @property TBEVENT[] $tBEVENTs
 * @property TBPERSON[] $tBPeople
 */
class TBUSER1 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'TB_USER_1';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USE_NAME', 'USE_LOGIN', 'USE_PASSWORD', 'USE_EMAIL'], 'required'],
            [['USER_ID'], 'number'],
            [['USE_NAME'], 'string', 'max' => 50],
            [['USE_LOGIN'], 'string', 'max' => 30],
            [['USE_PASSWORD'], 'string', 'max' => 80],
            [['USE_EMAIL'], 'string', 'max' => 40],
            [['USER_ID'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'USER_ID' => 'ID',
            'USE_NAME' => 'User Name',
            'USE_LOGIN' => 'Login',
            'USE_PASSWORD' => 'Password',
            'USE_EMAIL' => 'Email',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEvents()
    {
        return $this->hasMany(TBEVENT::className(), ['USER_ID' => 'USER_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPerson()
    {
        return $this->hasMany(TBPERSON::className(), ['USER_ID' => 'USER_ID']);
    }
}
