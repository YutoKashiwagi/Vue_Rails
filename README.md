# Rails + Vue.js
Vue.jsを使った開発の練習として

- バックエンド
  - Rails(APIとして使う)
- フロントエンド
  - Vue.js

という構成の簡単なCRUDアプリを作って色々動かしてみる

## 機能
- TweetモデルのCRUD(認証なし)

## 動作
### index, show
![index-show](https://user-images.githubusercontent.com/58618766/81256562-d5bc2880-906b-11ea-8eb9-1edbf64399b3.gif)

### create
![create](https://user-images.githubusercontent.com/58618766/81256567-d94faf80-906b-11ea-8dfe-2605c725810e.gif)

### update
![update](https://user-images.githubusercontent.com/58618766/81256574-df459080-906b-11ea-9c94-408af098df31.gif)

### destroy
![destroy](https://user-images.githubusercontent.com/58618766/81256582-e5d40800-906b-11ea-9285-c955336f01f8.gif)


## 勉強メモ

### emit, propsを使ったコンポーネント間のデータのやりとり
- emit: 子から親
- props: 親から子

https://orizuru.io/blog/vue-js/vue_emit-props/
