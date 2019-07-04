//
//  ViewController.swift
//  Swift5CountUpSound
//
//  Created by 藤田優作 on 2019/04/27.
//  Copyright © 2019 藤田優作. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    //feature-branch
   
    

    @IBOutlet var label: UILabel!
    
    
    var count = Int()//countはInt型で宣言するだけ
    var audioPlayer : AVAudioPlayer!
    
    //countTextというString型の箱を用意する。
    var countText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //countNumberというkey値で保存されていたデータを引っ張ってくる
        if UserDefaults.standard.object(forKey: "todo2") != nil {
            
        //NSTaggedPointString型?と思われる型をString型にダウンキャスティング
            countText = UserDefaults.standard.object(forKey: "todo2") as! String
            //String型をInt型にキャスト
            count = Int(countText)!
            //countTextの内容をラベルに反映
            label.text = countText
            
        } else {
        //countNumberに何も保存されていない場合は、countに0を代入
            count = 0
        }
        
    }

    
    
    
    
    

    
    
    @IBAction func plus(_ sender: Any) {

        
        count = count + 1//Int型
        
        //クッションをつける
        countText = String(count)
        //UserDefaultに保存する
        UserDefaults.standard.set(countText, forKey:"todo2" )
        //UserDefaultからlabel.textに引き出す
        if UserDefaults.standard.object(forKey: "todo2") != nil {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        /* label.text = String(count)
        //UserDefaultに保存
        UserDefaults.standard.set(count, forKey: "todo2")
        //UserDefaultから引き出す        //
        if (UserDefaults.standard.object(forKey: "todo2") != nil) {
            label.text = UserDefaults.standard.object(forKey: "todo2") as? String
 }*/
        //ここから音をつける

        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
        
    }
    
    
    @IBAction func plus5(_ sender: Any) {
        count = count + 5//Int型

        //クッションをつける
        countText = String(count)
        //UserDefaultに保存する
        UserDefaults.standard.set(countText, forKey:"todo2" )
        //UserDefaultからlabel.textに引き出す
        if UserDefaults.standard.object(forKey: "todo2") != nil {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        /* label.text = String(count)
         //UserDefaultに保存
         UserDefaults.standard.set(count, forKey: "todo2")
         //UserDefaultから引き出す        //
         if (UserDefaults.standard.object(forKey: "todo2") != nil) {
         label.text = UserDefaults.standard.object(forKey: "todo2") as? String
         }*/
        //ここから音をつける
        
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
        
        
    }
    
    @IBAction func plus10(_ sender: Any) {
        count = count + 10//Int型

        //クッションをつける
        countText = String(count)
        //UserDefaultに保存する
        UserDefaults.standard.set(countText, forKey:"todo2" )
        //UserDefaultからlabel.textに引き出す
        if UserDefaults.standard.object(forKey: "todo2") != nil {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        /* label.text = String(count)
         //UserDefaultに保存
         UserDefaults.standard.set(count, forKey: "todo2")
         //UserDefaultから引き出す        //
         if (UserDefaults.standard.object(forKey: "todo2") != nil) {
         label.text = UserDefaults.standard.object(forKey: "todo2") as? String
         }*/
        //ここから音をつける
        
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
    }
    
    @IBAction func plus50(_ sender: Any) {
        count = count + 50//Int型
        //クッションをつける
        countText = String(count)
        //UserDefaultに保存する
        UserDefaults.standard.set(countText, forKey:"todo2" )
        //UserDefaultからlabel.textに引き出す
        if UserDefaults.standard.object(forKey: "todo2") != nil {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        /* label.text = String(count)
         //UserDefaultに保存
         UserDefaults.standard.set(count, forKey: "todo2")
         //UserDefaultから引き出す        //
         if (UserDefaults.standard.object(forKey: "todo2") != nil) {
         label.text = UserDefaults.standard.object(forKey: "todo2") as? String
         }*/
        //ここから音をつける
        
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }

    }
    
    @IBAction func plus100(_ sender: Any) {
        count = count + 100//Int型

        //クッションをつける
        countText = String(count)
        //UserDefaultに保存する
        UserDefaults.standard.set(countText, forKey:"todo2" )
        //UserDefaultからlabel.textに引き出す
        if UserDefaults.standard.object(forKey: "todo2") != nil {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        /* label.text = String(count)
         //UserDefaultに保存
         UserDefaults.standard.set(count, forKey: "todo2")
         //UserDefaultから引き出す        //
         if (UserDefaults.standard.object(forKey: "todo2") != nil) {
         label.text = UserDefaults.standard.object(forKey: "todo2") as? String
         }*/
        //ここから音をつける
        
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
    }
    
    @IBAction func plus500(_ sender: Any) {
        count = count + 500//Int型
        //クッションをつける
        countText = String(count)
        //UserDefaultに保存する
        UserDefaults.standard.set(countText, forKey:"todo2" )
        //UserDefaultからlabel.textに引き出す
        if UserDefaults.standard.object(forKey: "todo2") != nil {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        /* label.text = String(count)
         //UserDefaultに保存
         UserDefaults.standard.set(count, forKey: "todo2")
         //UserDefaultから引き出す        //
         if (UserDefaults.standard.object(forKey: "todo2") != nil) {
         label.text = UserDefaults.standard.object(forKey: "todo2") as? String
         }*/
        //ここから音をつける
        
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
    }
    
    
    
    
    
    @IBAction func minus(_ sender: Any) {
        
        count = count - 1
        
        let countText = String(count)
        //UserDefaultに保存
        UserDefaults.standard.set(countText, forKey: "todo2")
        //UserDefaultからlabel.textに引き出す//
        if (UserDefaults.standard.object(forKey: "todo2") != nil) {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }

        if count < 0{
         
            count = 0
            label.text = String(count)
            
           
            
        }
        //ここから音をつける
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
           fatalError("Url is nil.")
            
        }
        
    }
    
    @IBAction func minus5(_ sender: Any) {
        count = count - 5
        
        let countText = String(count)
        //UserDefaultに保存
        UserDefaults.standard.set(countText, forKey: "todo2")
        //UserDefaultからlabel.textに引き出す//
        if (UserDefaults.standard.object(forKey: "todo2") != nil) {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        
        if count < 0{
            
            count = 0
            label.text = String(count)
            
            
            
        }
        //ここから音をつける
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
        
    }
    
    
    @IBAction func minus10(_ sender: Any) {
        count = count - 10
        
        let countText = String(count)
        //UserDefaultに保存
        UserDefaults.standard.set(countText, forKey: "todo2")
        //UserDefaultからlabel.textに引き出す//
        if (UserDefaults.standard.object(forKey: "todo2") != nil) {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        
        if count < 0{
            
            count = 0
            label.text = String(count)
            
            
            
        }
        //ここから音をつける
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
    }
    
    @IBAction func minus50(_ sender: Any) {
        count = count - 50
        
        let countText = String(count)
        //UserDefaultに保存
        UserDefaults.standard.set(countText, forKey: "todo2")
        //UserDefaultからlabel.textに引き出す//
        if (UserDefaults.standard.object(forKey: "todo2") != nil) {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        
        if count < 0{
            
            count = 0
            label.text = String(count)
            
            
            
        }
        //ここから音をつける
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
    }
    
    
    @IBAction func minus100(_ sender: Any) {
        count = count - 100
        
        let countText = String(count)
        //UserDefaultに保存
        UserDefaults.standard.set(countText, forKey: "todo2")
        //UserDefaultからlabel.textに引き出す//
        if (UserDefaults.standard.object(forKey: "todo2") != nil) {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        
        if count < 0{
            
            count = 0
            label.text = String(count)
            
            
            
        }
        //ここから音をつける
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
    }
    
    @IBAction func minus500(_ sender: Any) {
        count = count - 500
        
        let countText = String(count)
        //UserDefaultに保存
        UserDefaults.standard.set(countText, forKey: "todo2")
        //UserDefaultからlabel.textに引き出す//
        if (UserDefaults.standard.object(forKey: "todo2") != nil) {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        }
        
        if count < 0{
            
            count = 0
            label.text = String(count)
            
            
            
        }
        //ここから音をつける
        if let url = Bundle.main.url(forResource: "se_maoudamashii_system46", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
            fatalError("Url is nil.")
            
        }
    }
    //貯金額をリセットする
    @IBAction func reset(_ sender: Any) {
    
        count = 0
        label.text = String(count)
        countText = String(count)
        //UserDefaultに保存する
        UserDefaults.standard.set(countText, forKey:"todo2" )
        //UserDefaultからlabel.textに引き出す
        if UserDefaults.standard.object(forKey: "todo2") != nil {
            label.text = (UserDefaults.standard.object(forKey: "todo2") as! String)
        
        //ここからリセットの音をつける
        if let url = Bundle.main.url(forResource: "se_maoudamashii_onepoint23", withExtension: "mp3"){
            do{
                print("音楽再生")
                audioPlayer = try AVAudioPlayer                  (contentsOf: url)
                audioPlayer?.play()
            }catch{
                print("音楽再生失敗")
                //プレイヤー作成失敗
                //その場合は、プレイヤーをurlとする
                audioPlayer = nil
            }
            
        }else{
            print("ファイルが存在しない")
            //urlがnilなので再生できない
 fatalError("Url is nil.")
            
    }
    }
    
    
    }
    
}

