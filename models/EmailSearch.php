<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\TBEMAIL;

/**
 * EmailSearch represents the model behind the search form about `app\models\TBEMAIL`.
 */
class EmailSearch extends TBEMAIL
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['EMA_ID', 'PER_ID'], 'number'],
            [['EMA_TYPE', 'EMA_EMAIL'], 'safe'],
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
        $query = TBEMAIL::find();

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
            'EMA_ID' => $this->EMA_ID,
            'PER_ID' => $this->PER_ID,
        ]);

        $query->andFilterWhere(['like', 'EMA_TYPE', $this->EMA_TYPE])
            ->andFilterWhere(['like', 'EMA_EMAIL', $this->EMA_EMAIL]);

        return $dataProvider;
    }
}
