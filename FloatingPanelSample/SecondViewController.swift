//
//  SecondViewController.swift
//  FloatingPanelSample
//
//  Created by kohei.saito on 2020/02/21.
//  Copyright © 2020 kohei.saito. All rights reserved.
//

import UIKit
import FloatingPanel

class SecondViewController: FloatingPanelController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func set() {
        let vc = SecondContentViewController()
        let navigationController = UINavigationController(rootViewController: vc)
        
        navigationController.navigationBar.barTintColor = .white
        navigationController.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.black
        ]
        set(contentViewController: navigationController)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.track(scrollView: vc.tableView)
        }
        surfaceView.containerMargins = .init(top: 24.0, left: 0.0, bottom: view.safeAreaInsets.bottom, right: 0.0)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
