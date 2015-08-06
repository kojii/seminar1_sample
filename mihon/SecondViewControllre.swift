//
//  ViewControllre2.swift
//  Seminar1
//
//  Created by 山崎友弘 on 2015/07/08.
//  Copyright (c) 2015年 fsail. All rights reserved.
//

import UIKit

class SecondViewControllre: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.blueColor()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // 画面の表示の直前に呼ばれる
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // 画面の表示完了直後に呼ばれる
    }
    override func viewWillDisappear(animated: Bool) {
        super.viewDidAppear(animated)
        // 他の画面に遷移する直前に呼ばれる
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        // 他の画面に遷移した直後に呼ばれる
    }

}
