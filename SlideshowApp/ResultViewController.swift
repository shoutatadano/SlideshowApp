//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 唯野翔太 on 2021/11/17.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var image1: UIImageView!
    
    
    var image: UIImage!

       override func viewDidLoad() {
           super.viewDidLoad()
          image1.image = image
       
        
       
        // Do any additional setup after loading the view.
    }
}
   /// @IBAction func tap2(_ sender: Any) {

               // ①storyboardのインスタンス取得
             ///  let storyboard: UIStoryboard = self.storyboard!
        
               // ②遷移先ViewControllerのインスタンス取得
            ///   let nextView = storyboard.instantiateViewController(withIdentifier: "farst") as!
             ///   ViewController
               // ③画面遷移
            ///   self.present(nextView, animated: true, completion: nil)
           
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


