//
//  colorsdetailVC.swift
//  UIKIT Intro
//
//  Created by Apple on 12/05/2023.
//  Copyright © 2023 Apple. All rights reserved.
//

import UIKit

class colorsdetailVC: UIViewController {
    

    var color: UIColor?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = color ?? UIColor.blue
        
    }
    
    

    
}
