//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by Yoo SeungHwan on 2016/09/23.
//  Copyright © 2016年 kotsuya00. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var logoImageView: UIImageView!
    
//    override func loadView() {
//        super.loadView()
//        print("loadView")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        
        //画面centerに
        self.logoImageView.center = self.view.center
        //logo設定
        self.logoImageView.image = UIImage(named: "1")
        //viewに追加
        self.view.addSubview(self.logoImageView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
        //少し縮小するアニメーション
        UIView.animate(withDuration: 0.3,
                                   delay: 1.0,
                                   options: UIViewAnimationOptions.curveEaseOut,
                                   animations: { () in
                                    self.logoImageView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            }, completion: { (Bool) in
                
        })
        
        //拡大させて、消えるアニメーション
        UIView.animate(withDuration: 0.2,
                                   delay: 1.3,
                                   options: UIViewAnimationOptions.curveEaseOut,
                                   animations: { () in
                                    self.logoImageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                                    self.logoImageView.alpha = 0
            }, completion: { (Bool) in
                self.logoImageView.removeFromSuperview()
        })        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

