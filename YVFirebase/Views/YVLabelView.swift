//
//  YVLabelView.swift
//  YVFirebase
//
//  Created by Yash Vyas on 12/12/17.
//  Copyright © 2017 Yash Vyas. All rights reserved.
//

import UIKit

class YVLabelView: YVView {

    @IBOutlet weak var label: UILabel!
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            label.layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var text: String? = nil {
        didSet {
            label.text = text
        }
    }
    @IBInspectable var labelTextColor: UIColor? = nil {
        didSet {
            label.textColor = labelTextColor
        }
    }
    @IBInspectable var labelTextAlignment: Int = 4 {
        didSet {
            label.textAlignment = NSTextAlignment(rawValue: labelTextAlignment) ?? .natural
        }
    }
    @IBInspectable var labelBackgroundColor: UIColor? = nil {
        didSet {
            label.backgroundColor = labelBackgroundColor
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
            label.layer.cornerRadius = cornerRadius
            label.layer.masksToBounds = true
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
