//
//  YVButtonView.swift
//  YVFirebase
//
//  Created by Yash Vyas on 11/12/17.
//  Copyright © 2017 Yash Vyas. All rights reserved.
//

import UIKit

@objc protocol YVButtonViewDelegate {
    @objc optional func buttonAction(_ sender: UIButton)
}

@IBDesignable
class YVButtonView: YVView {

    @IBOutlet weak var button: UIButton!
    @IBOutlet var target: YVButtonViewDelegate?
    
    @IBInspectable var cornerRadius: CGFloat = 25 {
        didSet {
            button.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var title: String? = nil {
        didSet {
            button.setTitle(title, for: .normal)
        }
    }
    
    @IBInspectable var buttonBackgroundColor: UIColor? = nil {
        didSet {
            button.backgroundColor = buttonBackgroundColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func setup() {
        super.setup()
        
        if cornerRadius >= 0 {
            button.layer.cornerRadius = cornerRadius
            button.layer.masksToBounds = true
        }
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        target?.buttonAction?(sender)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
