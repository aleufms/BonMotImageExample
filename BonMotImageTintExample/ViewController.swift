//
//  ViewController.swift
//  BonMotImageTintExample
//
//  Created by Alessandro Nakamuta on 2/4/16.
//  Copyright © 2016 Jera. All rights reserved.
//

import UIKit
import BonMot

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var barButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let chain = BONChain().textColor(UIColor.redColor())
        chain.appendLink(BONChain().image(UIImage(named: "ic_navigate_next")))
        chain.appendLink(BONChain().string("TEXT").text, separator: " ")
        chain.appendLink(BONChain().image(UIImage(named: "ic_navigate_next")), separator: " ")
        
        label.attributedText = chain.attributedString
    }


}

