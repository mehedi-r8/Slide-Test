//
//  new.swift
//  Slide Test
//
//  Created by MEHEDI.R8 on 9/21/18.
//  Copyright © 2018 mehedi.r8. All rights reserved.
//

import UIKit

class new: UIViewController {

    @IBOutlet weak var MenuBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        MenuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(revealViewController().tapGestureRecognizer())
    }
    

  

}
