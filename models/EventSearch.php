<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\TBEVENT;

/**
 * EventSearch represents the model behind the search form about `app\models\TBEVENT`.
 */
class EventSearch extends TBEVENT
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['EVENT_ID', 'USER_ID'], 'number'],
            [['EVE_NAME', 'EVE_DATE_BEGIN', 'EVE_DATE_END', 'EVE_PLACE', 'EVE_NOTES'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = TBEVENT::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'EVENT_ID' => $this->EVENT_ID,
            'EVE_DATE_BEGIN' => $this->EVE_DATE_BEGIN,
            'EVE_DATE_END' => $this->EVE_DATE_END,
            'USER_ID' => $this->USER_ID,
        ]);

        $query->andFilterWhere(['like', 'EVE_NAME', $this->EVE_NAME])
            ->andFilterWhere(['like', 'EVE_PLACE', $this->EVE_PLACE])
            ->andFilterWhere(['like', 'EVE_NOTES', $this->EVE_NOTES]);

        return $dataProvider;
    }
}
