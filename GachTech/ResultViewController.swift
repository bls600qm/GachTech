//
//  ResultViewController.swift
//  GachTech
//
//  Created by Rika Sumitomo on 2019/04/10.
//  Copyright © 2019 Rika Sumitomo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //一番後ろの画像
    @IBOutlet var haikeiImageView: UIImageView!
    //モンスターを表示する画像
    @IBOutlet var monsterImageView: UIImageView!
    //モンスター画像を保存しておく入れる
    var monsterArray: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //0~9の間で乱数出す
        let number = Int.random(in: 0..<10)
        
        //モンスターの画像を10枚追加する
        monsterArray = [UIImage(named: "monster001.png")!,
                        UIImage(named: "monster002.png")!,
                        UIImage(named: "monster003.png")!,
                        UIImage(named: "monster004.png")!,
                        UIImage(named: "monster005.png")!,
                        UIImage(named: "monster006.png")!,
                        UIImage(named: "monster007.png")!,
                        UIImage(named: "monster008.png")!,
                        UIImage(named: "monster009.png")!,
                        UIImage(named: "monster010.png")!]
        
        //ランダムに選んだモンスターを表示する
        monsterImageView.image = monsterArray[number]
        
        //背景画像をモンスターによって切り替える
        
        if number == 9 {
            haikeiImageView.image = UIImage(named: "bg_gold@2x.png")!
        } else if number > 6 {
            haikeiImageView.image = UIImage(named: "bg_blue@2x.png")!
        } else {
            haikeiImageView.image = UIImage(named: "bg_red@2x.png")!
        }
    }
    //このResultViewControllerがよ表示されるたびに呼び出すメソッド
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        //アニメーションの中でもtransformさせるキーパスを設定
        let animation = CABasicAnimation(keyPath: "transform")
        
        //アニメーション開始時の数値
        animation.fromValue = NSNumber(value: 0)
        
        //アニメーション終了時の数値 M_PIは180度のこと
        animation.toValue = NSNumber(value: 2 * Double.pi)
        
        //Z軸を中心としたアニメーションにする
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        
        //アニメーションの速さを指定する
        animation.duration = 5
        
        //アニメーションを何回繰り返すか決める
        animation.repeatCount = Float.infinity
        
        //どのレイヤーをアニメーションさせるか決める
        haikeiImageView.layer.add(animation, forKey: nil)
    }

    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
