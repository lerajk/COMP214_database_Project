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
            [['EVENT_ID', 'EVE_NAME', 'USER_ID'], 'required'],
            [['EVENT_ID', 'USER_ID'], 'number'],
            [['EVE_DATE_BEGIN', 'EVE_DATE_END'], 'safe'],
            [['EVE_NAME'], 'string', 'max' => 60],
            [['EVE_PLACE'], 'string', 'max' => 80],
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
            'EVENT_ID' => 'Event  ID',
            'EVE_NAME' => 'Eve  Name',
            'EVE_DATE_BEGIN' => 'Eve  Date  Begin',
            'EVE_DATE_END' => 'Eve  Date  End',
            'EVE_PLACE' => 'Eve  Place',
            'EVE_NOTES' => 'Eve  Notes',
            'USER_ID' => 'User  ID',
        ];
    }
}
