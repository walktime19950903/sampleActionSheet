

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    //Selectボタンが押された時発動
    @IBAction func tapSelect(_ sender: UIButton) {
        
        //アクションシート作成
        let actionSheet = UIAlertController(title: "どのアクティビティにする?", message: "今日のアクティビティ", preferredStyle: .actionSheet)
        
        //アクティビティボタン１を追加
//        actionSheet.addAction(UIAlertAction(
//            title: "ヨガ",
//            style: .default,
//            handler: {action in self.myLabel.text = "ヨガ行こう！"})
//        )
        actionSheet.addAction(UIAlertAction(
            title: "ヨガ",
            style: .default,
            handler: {action in self.Activity(name: "ヨガ")})
        )

        
        //アクティビティボタン２を追加
        actionSheet.addAction(UIAlertAction(
            title: "バスケットボール",
            style: .default,
            handler: {action in self.Activity(name: "バスケットボール")})
        )
        
        //削除ボタンを追加
        actionSheet.addAction(UIAlertAction(
            title: "ムエタイ",
            style: .destructive,
            handler: {action in self .Destructive()})
        )
        
        //キャンセルボタンを追加
        actionSheet.addAction(UIAlertAction(
            title: "今日はやめる",
            style: .cancel,
            handler: {action in self .Cancel()})
        )

        //アクションシートを表示
        present(actionSheet,animated: true, completion: nil)
        
    }
    
    //アクティビティボタンが押されたら起動する自作関数
    //Activity 関数名
    //name 引数（ひきすう）・・・呼び出された所で処理をするための情報をもらう時に使用する
    //name:String 引数はString型と型指定している
    func Activity(name:String){
    
        myLabel.text = "\(name)、行こう！"
    }
    
    //TODO:Activity関数を使ってバスケの処理を実行できるようにする
    
    
    
    //TODO:Destructive関数を作ってムエタイが押された時に呼び出してください（引数不要）
    
    func Destructive(){
        
        myLabel.text = "ムエタイ頑張ろう"
        
    }
    
    //TODO:Cancel関数を作って「今日はやめとく」が押された時呼び出してください（引数不要）
    func Cancel(){
        myLabel.text = "今日はやめとこう"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

