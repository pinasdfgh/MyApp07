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
        btnOk?.frame = CGRect(x:20,y:20,width:40,height:40)
        btnOk?.setTitle("OK", for: UIControlState.normal)
        
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

