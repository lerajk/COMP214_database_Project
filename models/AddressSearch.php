<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\TBADDRESS;

/**
 * AddressSearch represents the model behind the search form about `app\models\TBADDRESS`.
 */
class AddressSearch extends TBADDRESS
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ADD_ID', 'PER_ID'], 'number'],
            [['ADD_TYPE', 'ADD_ADDRESS', 'ADD_CITY', 'ADD_STATE', 'ADD_COUNTRY', 'ADD_ZIP'], 'safe'],
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
        $query = TBADDRESS::find();

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
            'ADD_ID' => $this->ADD_ID,
            'PER_ID' => $this->PER_ID,
        ]);

        $query->andFilterWhere(['like', 'ADD_TYPE', $this->ADD_TYPE])
            ->andFilterWhere(['like', 'ADD_ADDRESS', $this->ADD_ADDRESS])
            ->andFilterWhere(['like', 'ADD_CITY', $this->ADD_CITY])
            ->andFilterWhere(['like', 'ADD_STATE', $this->ADD_STATE])
            ->andFilterWhere(['like', 'ADD_COUNTRY', $this->ADD_COUNTRY])
            ->andFilterWhere(['like', 'ADD_ZIP', $this->ADD_ZIP]);

        return $dataProvider;
    }
}
