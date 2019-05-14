//
//  PopupView.swift
//  GiaoDienSoXuong
//
//  Created by Duc on 5/14/19.
//  Copyright © 2019 Đức Đẹp Trai. All rights reserved.
//

import UIKit
class PopupView: UIView {
    var isOpen: Bool = false {
        didSet{
            coverButton.alpha = isOpen ? 0.6 : 0
            UIView.animate(withDuration: 0.2) {
                self.layoutIfNeeded()
            }
            
            if !isOpen {
                self.removeFromSuperview()
                selectedButton?.isSelected = false
            }
        }
    }
    
    weak var selectedButton: Button?
    
    @IBOutlet weak var coverButton: UIButton!
    @IBOutlet weak var neck: UIView!
    func layoutWhenButtonClicked(_ button: Button) {
        isOpen = true
        neck.frame = CGRect(x: button.frame.minX + 4, y: 0, width: button.frame.width, height: 20)
        selectedButton = button
    }
    @IBAction func clickedCoverButton(_ sender: UIButton) {
        isOpen = false
    }
}
