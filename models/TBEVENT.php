<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "TB_EVENT".
 *
 * @property string $EVENT_ID
 * @property string $EVE_NAME
 * @property string $EVE_DATE_BEGIN
 * @property string $EVE_DATE_END
 * @property string $EVE_PLACE
 * @property string $EVE_NOTES
 * @property string $USER_ID
 */
class TBEVENT extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'TB_EVENT';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['EVE_NAME', 'EVE_DATE_BEGIN', 'EVE_DATE_END', 'USER_ID'], 'required'],
            [['EVENT_ID', 'USER_ID'], 'number'],
            [['EVE_NAME'], 'string', 'max' => 80],
            [['EVE_DATE_BEGIN', 'EVE_DATE_END'], 'string', 'max' => 7],
            [['EVE_PLACE'], 'string', 'max' => 100],
            [['EVE_NOTES'], 'string', 'max' => 200],
            [['EVENT_ID'], 'unique'],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TBUSER1::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'EVENT_ID' => 'ID',
            'EVE_NAME' => 'Event',
            'EVE_DATE_BEGIN' => 'Start Date',
            'EVE_DATE_END' => 'End Date',
            'EVE_PLACE' => 'Place',
            'EVE_NOTES' => 'Notes',
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
