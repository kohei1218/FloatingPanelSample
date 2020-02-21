//
//  FirstContentViewController.swift
//  FloatingPanelSample
//
//  Created by kohei.saito on 2020/02/21.
//  Copyright © 2020 kohei.saito. All rights reserved.
//

import UIKit
import WebKit

class FirstContentViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url: URL(string: "https://www.theguardian.com/sport/2020/feb/20/rory-mcilroy-does-his-talking-on-course-to-lead-in-mexico")!)
        webView.load(request)
        let vc = SecondViewController()
        vc.set()
        vc.addPanel(toParent: self)
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
