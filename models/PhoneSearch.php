<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\TBPHONE;

/**
 * PhoneSearch represents the model behind the search form about `app\models\TBPHONE`.
 */
class PhoneSearch extends TBPHONE
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PHO_ID', 'PER_ID'], 'number'],
            [['PHO_TYPE', 'PHO_NUMBER'], 'safe'],
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
        $query = TBPHONE::find();

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
            'PHO_ID' => $this->PHO_ID,
            'PER_ID' => $this->PER_ID,
        ]);

        $query->andFilterWhere(['like', 'PHO_TYPE', $this->PHO_TYPE])
            ->andFilterWhere(['like', 'PHO_NUMBER', $this->PHO_NUMBER]);

        return $dataProvider;
    }
}
