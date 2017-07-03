//
//  memoViewController.swift
//  Kyun_1
//
//  Created by 坂本のぞみ on 2016/11/27.
//  Copyright © 2016年 坂本のぞみ. All rights reserved.


import UIKit

class memoViewController: UIViewController,UITextFieldDelegate {
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    //AppDelegateのインスタンスを取得

    // データ保存
    var saveMemoData:UserDefaults=UserDefaults.standard
    var memoArray=[Dictionary<String,String>]()
    @IBOutlet var textField1:UITextField!
    @IBOutlet var textField2:UITextField!
    //let memoTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if saveMemoData.object(forKey: "kyunMemoKey") != nil{
            memoArray=saveMemoData.object(forKey: "kyunMemoKey") as! Array
        }
        
          }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 改行ボタンを押した時の処理
    func textFieldShouldReturn(_ textField1: UITextField) -> Bool {
        // キーボードを隠す
        textField1.resignFirstResponder()
        return true
    }
    


    @IBAction func saveMemo(){
        
        let memoDitionary = ["memo":textField1.text!,"iti":textField2.text!]
        
        memoArray.append(memoDitionary)
        saveMemoData.set(memoArray,forKey:"kyunMemoKey")
        
        let alertSave = UIAlertController(
            title:"保存完了",
            message:"メモ登録完了！",
            preferredStyle: .alert)
        alertSave.addAction(
            UIAlertAction(
                title:"OK",
                style:.default,
                handler: {action  in
                    NSLog("saveされたよ")
                }
            )
        
        )
        
        present(alertSave,animated: true,completion: nil)
        textField1.text=""
    }
    
}
