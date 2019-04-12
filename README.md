## これだけは抑えておくポイント
- 新しくControllerを追加するには，部品出すアイコンからView Controllerを選ぶ．
- コードだけで画面遷移するときは，以下のようにperformSegueを使って書く．
```
@IBAction func gacha(){
  self.performSegue(withIdentifier: "result", sender: nil)
}
```
- 新しくクラスを作るときは左上のNewから作って，Main.storyboardにつなげる


## Swiftの言語特性
- ０~１０の間でランダムな数字を発生させる場合は以下のように書く．
```
let number = Int.random(in: 0..<10)
```

## エラーが起きたところの原因，解決法
- View Controllerを配置した後の動かし方が分からなかったが，上部の長細いバーを持つと動かせた．
- 配列に画像を入れるところで，画像ファイル名に""をつけ忘れていてエラーが出た．


  
