# README  
[![Image from Gyazo](https://i.gyazo.com/b973203f74c582402a1f9dc804ddc55b.jpg)](https://gyazo.com/b973203f74c582402a1f9dc804ddc55b)
  

# 家事モチベーションUPアプリ BROOMER
  - 部屋を片付ける前と後の写真を掲載できる。
  - 掲載後、「いいね」やコメントがもらえる。
  - 「いいね」の多い順にランキングが掲載される。
  

# 開発した理由
私は家事が嫌いです。
誰かに褒められるわけでもなく、無報酬で、その割に大変で、
直ぐに元の黙阿弥になってしまうからです。
そこで、モチベーションをあげる為には、下記のことが良いと思いました。
  - 他者に見てもらうこと
  - 他者に褒めてもらうこと
  - 競争意識を芽生えさせること
  - 形に残すこと
 
こうした要素を反映させたのが、本アプリ画像投稿サイトBROOMERです。  
家事をもっと楽しんで行えるように、という希望を込めて開発しました。
  

# 工夫したところ
  1. **モバイル対応**  
  PCサイズでは画像が横並びに、携帯サイズでは縦並びになる様にし、
  小さい画面でも見やすくなるようにしました。  <img src="https://i.gyazo.com/9db4bce63aacc3b45b4ac7689b403409.jpg" width="300px" height="300px">
  
  2. **いいねの順に並ぶランキング**  
  6位まで表示し、いいね数がnullのものは排除しました。
  [![Image from Gyazo](https://i.gyazo.com/a2a747013bf4c56fc8bc1ea11057128c.jpg)](https://gyazo.com/a2a747013bf4c56fc8bc1ea11057128c)
  
  3. **非同期通信のいいね + コメント機能**  
  非同期通信にすることで、ユーザの心理的ハードルを下げました。  
  [![Image from Gyazo](https://i.gyazo.com/5f776b853f44c639174996a1787b6a82.png)](https://gyazo.com/5f776b853f44c639174996a1787b6a82)
  
  4. **通知機能**  
  他のユーザからいいねやコメントが付くと、通知が作成されます。
  ユーザは自分に宛てられた通知を一覧で確認可能です。
  未確認の通知があるときは赤丸で知らせます。
  [![Image from Gyazo](https://i.gyazo.com/00193cdb2c4df486b4ebdedfe0706d99.png)](https://gyazo.com/00193cdb2c4df486b4ebdedfe0706d99)
  
  5. **タグ付け**  
  タグの検索機能を付与しました。
  [![Image from Gyazo](https://i.gyazo.com/a3a59693241804e4f82c9d1c6a581cfc.jpg)](https://gyazo.com/a3a59693241804e4f82c9d1c6a581cfc)
  
  6. **S3**  
  画像はS3に保存しています。
