//
//  ViewController.swift
//  Naetos
//
//  Created by Daisuke Doi on 2022/09/19.
//

//2022.11.28 for comitting test of Git ver1 successed

//2022.11.28 for comitting test of Git ver2 (connect to remote)


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countUpLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //ラベルの文字を0と表示したい // String型
         countUpLabel.text = "0"
        
    }

        
    @IBAction func plus(_ sender: Any) {
        
        //カウントダウンさせたい
        count = count + 1
        //label に文字を反映したい（数字）
        countUpLabel.text = String(count)
        //もし色を10以上になったら、黄色に変更したい
        if count >= 10{
            changeTextColor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        
       // カウントダウンさせたい
        count = count - 1
        //label に文字を反映したい（数字）
        countUpLabel.text = String(count)
        //もし色を0以下になったら、白に変更したい
        if count <= 0{
            resetColor()
        }
    }
        
    func changeTextColor(){
         countUpLabel.textColor = .yellow
    }
            
    func resetColor(){
        countUpLabel.textColor = .white
    }
    
    

}

