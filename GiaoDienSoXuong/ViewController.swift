//
//  ViewController.swift
//  GiaoDienSoXuong
//
//  Created by Duc on 5/14/19.
//  Copyright © 2019 Đức Đẹp Trai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var headerButtons: [Button]!
    @IBOutlet weak var popupView: PopupView!
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clickedHeaderButton(sender: Button) {
        headerButtons.forEach{$0.isSelected = false}
        sender.isSelected = !sender.isSelected
        addPopupView()
        popupView.layoutWhenButtonClicked(sender)
    }
    
    private func addPopupView() {
        view.addSubview(popupView)
        popupView.fill(left: 0, top: nil, right: 0, bottom: -100)
        popupView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        
    }

}

