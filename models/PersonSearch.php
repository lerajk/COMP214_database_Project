<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\TBPERSON;

/**
 * PersonSearch represents the model behind the search form about `app\models\TBPERSON`.
 */
class PersonSearch extends TBPERSON
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PER_ID', 'PER_ACTIVE', 'USER_ID'], 'number'],
            [['PER_FIRST', 'PER_MIDDLE', 'PER_LAST', 'PER_SEX', 'PER_SIN'], 'safe'],
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
        $query = TBPERSON::find();

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
            'PER_ID' => $this->PER_ID,
            'PER_ACTIVE' => $this->PER_ACTIVE,
            'USER_ID' => $this->USER_ID,
        ]);

        $query->andFilterWhere(['like', 'PER_FIRST', $this->PER_FIRST])
            ->andFilterWhere(['like', 'PER_MIDDLE', $this->PER_MIDDLE])
            ->andFilterWhere(['like', 'PER_LAST', $this->PER_LAST])
            ->andFilterWhere(['like', 'PER_SEX', $this->PER_SEX])
            ->andFilterWhere(['like', 'PER_SIN', $this->PER_SIN]);

        return $dataProvider;
    }
}
