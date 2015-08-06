//
//  CustomNavigationController.swift
//  mihon
//
//  Created by 山崎友弘 on 2015/07/08.
//  Copyright (c) 2015年 fsail. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController,UINavigationControllerDelegate {
    let customNavigationBar = UIImageView(image: UIImage(named: "aiko-banner.jpg"))
    var returnBtn:UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()

        customNavigationBar.contentMode = UIViewContentMode.ScaleAspectFill
        customNavigationBar.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 100)
        customNavigationBar.userInteractionEnabled = true
        self.view.addSubview(customNavigationBar)
        
        returnBtn = UIButton()
        returnBtn?.addTarget(self, action: "returnScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        returnBtn?.backgroundColor = UIColor.blueColor()
        returnBtn?.setTitle("戻るよ", forState: UIControlState.Normal)
        returnBtn?.frame = CGRectMake(250, 40, 100, 50)
        customNavigationBar.addSubview(returnBtn!)
        
        self.delegate = self
    }
    
    func returnScreen(sender:UIButton){
        self.popViewControllerAnimated(true)
    }
    
    func navigationController(navigationController: UINavigationController,
        willShowViewController viewController: UIViewController, animated: Bool) {
        if(self.childViewControllers.count <= 1){
            returnBtn?.alpha = 0
        }else{
            returnBtn?.alpha = 1
        }
    }
}
