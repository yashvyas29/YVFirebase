//
//  YVButtonView.swift
//  YVFirebase
//
//  Created by Yash Vyas on 11/12/17.
//  Copyright © 2017 Yash Vyas. All rights reserved.
//

import UIKit

@IBDesignable
class YVButtonView: YVView {

    @IBOutlet weak var button: UIButton!
    
    @IBInspectable var cornerRadius: CGFloat = 25 {
        didSet {
            button.layer.cornerRadius = cornerRadius
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
        
        button.layer.cornerRadius = cornerRadius
        button.layer.masksToBounds = true
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
