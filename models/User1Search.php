<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\TBUSER1;

/**
 * User1Search represents the model behind the search form about `app\models\TBUSER1`.
 */
class User1Search extends TBUSER1
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USER_ID'], 'number'],
            [['USE_NAME', 'USE_LOGIN', 'USE_PASSWORD', 'USE_EMAIL'], 'safe'],
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
        $query = TBUSER1::find();

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
            'USER_ID' => $this->USER_ID,
        ]);

        $query->andFilterWhere(['like', 'USE_NAME', $this->USE_NAME])
            ->andFilterWhere(['like', 'USE_LOGIN', $this->USE_LOGIN])
            ->andFilterWhere(['like', 'USE_PASSWORD', $this->USE_PASSWORD])
            ->andFilterWhere(['like', 'USE_EMAIL', $this->USE_EMAIL]);

        return $dataProvider;
    }
}
