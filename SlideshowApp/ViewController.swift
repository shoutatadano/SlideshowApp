//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 唯野翔太 on 2021/11/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var return1: UIButton!
    @IBOutlet weak var moveon: UIButton!
    @IBOutlet weak var startstopButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func start(_ sender: Any) {
        // 表示している画像の番号を1減らす
               
        // 表示している画像の番号を1増やす
        dispImageNo += 1

        // 表示している画像の番号を元に画像を表示する
        displayImage()
    }
    @IBAction func `return`(_ sender: Any) {
        // 表示している画像の番号を1増やす
        // 表示している画像の番号を1減らす
                dispImageNo -= 1

                // 表示している画像の番号を元に画像を表示する
                displayImage()
    }
   
   
    @IBAction func slideShowButton(_ sender: Any) {
    
    if(timer==nil){
            timer=Timer.scheduledTimer(timeInterval: 2,target:self,selector: #selector(changeImage),userInfo: nil,repeats: true)
            startstopButton.setTitle("停止", for: .normal)
       moveon.isEnabled = false
       return1.isEnabled = false
       
            
            
        }else{
            timer.invalidate()
            timer=nil
            startstopButton.setTitle("再生", for: .normal)
            moveon.isEnabled = true
            return1.isEnabled = true
           
        }
        
    }
   
   /// @IBAction func tapAction(_ sender: Any) {
    

      ///   let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(
                 ///   target: self,
                ///    action: #selector(ViewController.tapped(_:)))
             
        ///self.view.addGestureRecognizer(tapGesture)
  ///  }
    
  
    
    
    /// 表示している画像の番号
       var dispImageNo = 0
       var timer: Timer!
      
    
       /// 表示している画像の番号を元に画像を表示する
       func displayImage() {
        // 画像の名前の配列
        let imageNameArray = [
                   "a",
                   "b",
                   "c",
                ]
        // 画像の番号が正常な範囲を指しているかチェック

              // 範囲より下を指している場合、最後の画像を表示
              if dispImageNo < 0 {
                  dispImageNo = 2
              }

              // 範囲より上を指している場合、最初の画像を表示
              if dispImageNo > 2 {
                  dispImageNo = 0
              }
        // 表示している画像の番号から名前を取り出し
              let name = imageNameArray[dispImageNo]
        // 画像を読み込み
               let image = UIImage(named: name)
        // Image Viewに読み込んだ画像をセット
              imageView.image = image
          }
        
       
           
   
    override func viewDidLoad() {
    super.viewDidLoad()
        let image = UIImage(named: "a")
       
        // Image Viewに画像を設定
        imageView.image = image
    }
    
    var nowIndex:Int = 0
     //スライドショーさせる画像の配列を宣言
     var imageArray:[UIImage] = [
        
         UIImage(named: "a")!,
         UIImage(named: "b")!,
         UIImage(named: "c")!,
        
        ]
    
    @objc func changeImage() {
        
        // indexを増やして表示する画像を切り替える
               nowIndex += 1

               // indexが表示予定の画像の数と同じ場合
               if (nowIndex == imageArray.count) {
                   // indexを一番最初の数字に戻す
                   nowIndex = 0
               }
               // indexの画像をstoryboardの画像にセットする
               imageView.image = imageArray[nowIndex]
        
                }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.image = imageView.image
        timer.invalidate()
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        timer=Timer.scheduledTimer(timeInterval: 2,target:self,selector: #selector(changeImage),userInfo: nil,repeats: true)
       
}
}

        
    ///@objc func tapped(_ sender: UITapGestureRecognizer){
    ///   if sender.state == .ended {
            // ①storyboardのインスタンス取得
                 ///  let storyboard: UIStoryboard = self.storyboard!
            
                   // ②遷移先ViewControllerのインスタンス取得
                 ///  let nextView = storyboard.instantiateViewController(withIdentifier: "Result2") as! ResultViewController
            
                   // ③画面遷移
                 ///  self.present(nextView, animated: true, completion: nil)
             ///  }
      
            

