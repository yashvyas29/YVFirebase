//
//  YVView.swift
//  YVFirebase
//
//  Created by Yash Vyas on 11/12/17.
//  Copyright © 2017 Yash Vyas. All rights reserved.
//

import UIKit

class YVView: UIView {
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet {
            leadingConstraint.constant = leftPadding
        }
    }
    @IBInspectable var rightPadding: CGFloat = 0 {
        didSet {
            trailingConstraint.constant = leftPadding
        }
    }
    @IBInspectable var topPadding: CGFloat = 0 {
        didSet {
            topConstraint.constant = leftPadding
        }
    }
    @IBInspectable var bottomPadding: CGFloat = 0 {
        didSet {
            bottomConstraint.constant = leftPadding
        }
    }
    @IBInspectable var height: CGFloat = 50 {
        didSet {
            heightConstraint.constant = height
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        fromNib()
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fromNib()
        setup()
    }
    
    func setup() {
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
