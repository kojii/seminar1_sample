//
//  ViewController.swift
//  Seminar1
//
//  Created by 山崎友弘 on 2015/07/08.
//  Copyright (c) 2015年 fsail. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.grayColor()
        
        let nextSceneBtn: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        nextSceneBtn.setTitle("次の画面へ", forState: UIControlState.Normal)
        nextSceneBtn.addTarget(self, action: "nextScene:", forControlEvents: UIControlEvents.TouchUpInside)
        nextSceneBtn.sizeToFit()
        nextSceneBtn.center = self.view.center
        self.view.addSubview(nextSceneBtn)
    }
    
    func nextScene(sender:UIButton){
        self.navigationController?.pushViewController(SecondViewControllre(), animated: true)
    }
}

