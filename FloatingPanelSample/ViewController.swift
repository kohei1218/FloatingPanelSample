//
//  ViewController.swift
//  FloatingPanelSample
//
//  Created by kohei.saito on 2020/02/21.
//  Copyright © 2020 kohei.saito. All rights reserved.
//

import UIKit
import FloatingPanel

class ViewController: UIViewController {
    
    @IBAction func tappedButton(_ sender: Any) {
                present(FirstViewController(), animated: true, completion: nil)
    }
    
}

