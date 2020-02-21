//
//  FirstViewController.swift
//  FloatingPanelSample
//
//  Created by kohei.saito on 2020/02/21.
//  Copyright © 2020 kohei.saito. All rights reserved.
//

import UIKit
import FloatingPanel

class FirstViewController: FloatingPanelController {

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
        isRemovalInteractionEnabled = true
        surfaceView.grabberHandle.isHidden = true
        
        let vc = FirstContentViewController()
        set(contentViewController: vc)
        track(scrollView: vc.webView.scrollView)
        
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

extension FirstViewController: FloatingPanelControllerDelegate {
    func floatingPanel(_ vc: FloatingPanelController, layoutFor newCollection: UITraitCollection) -> FloatingPanelLayout? {
        return FirstViewLayout()
    }
}

class FirstViewLayout: FloatingPanelLayout {
    
    var initialPosition: FloatingPanelPosition {
        return .full
    }
    
    func insetFor(position: FloatingPanelPosition) -> CGFloat? {
        switch position {
        case .full: return 40.0
        default: return nil
        }
    }
    
    var supportedPositions: Set<FloatingPanelPosition> {
        return [.full]
    }
    
}
