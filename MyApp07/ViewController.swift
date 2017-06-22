//
//  ViewController.swift
//  MyApp07
//
//  Created by user on 2017/6/21.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    private var btnOk:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnOk = UIButton(type: UIButtonType.system)
        //CHRect類別為處理範圍 == 畫面範圍
        btnOk?.frame = CGRect(x:0,y:20,width:40,height:40)
        btnOk?.setTitle("OK", for: UIControlState.normal)
        btnOk?.backgroundColor = UIColor(colorLiteralRed: 1, green: 1, blue: 0, alpha: 1)
        
        
        //addTarget增加事件
        btnOk?.addTarget(self, action: #selector(clickBtnOk), for: UIControlEvents.touchUpInside)
       btnOk?.addTarget(self, action: #selector(clickBtnOk2), for: UIControlEvents.touchDown)
        
        
        
        //UIViewController屬性{get,set}輸入方法UIView.addSubview
        self.view.addSubview(btnOk!)
        //判斷機種
        switch traitCollection.userInterfaceIdiom{
        case .pad:
            print("pad")
        case .phone:
            print("phone")
        default:
            break
        }
        
    }
    
    //@objc之前留下的方法
    @objc private func clickBtnOk(sender: UIButton){
        print("123")
        
    }
    @objc private func clickBtnOk2(sender: UIButton){
        print("435")
        
    }
    
    //Protocol UIContentContainer 中的方法
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        //size and coordinator 已有
        
        super.viewWillTransition(to: size, with: coordinator)
        switch UIDevice.current.orientation{
        case .faceUp:
            print("faceUp")
        case .faceDown:
            print("faceDown")
        case .landscapeLeft:
            print("Home ->")
        case .landscapeRight:
            print("<-Home")
        case .portrait:
            print("normal")
        case .portraitUpsideDown:
            print("normal reverse")
        default:
            break
        }
        print("size => w = \(size.width),h = \(size.height)")
        print(coordinator)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

