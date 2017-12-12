//
//  YVTextFieldView.swift
//  YVFirebase
//
//  Created by Yash Vyas on 11/12/17.
//  Copyright © 2017 Yash Vyas. All rights reserved.
//

import UIKit

@IBDesignable
class YVTextFieldView: YVView {

    @IBOutlet weak var textField: UITextField!
    
    @IBInspectable var cornerRadius: CGFloat = 25 {
        didSet {
            if cornerRadius == 0 {
                textField.leftView = nil
                textField.leftViewMode = .never
            } else {
                textField.layer.cornerRadius = cornerRadius
                textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: cornerRadius, height: height))
            }
        }
    }
    @IBInspectable var placeholder: String? = nil {
        didSet {
            textField.placeholder = placeholder
        }
    }
    @IBInspectable var textFieldBackgroundColor: UIColor? = nil {
        didSet {
            textField.backgroundColor = textFieldBackgroundColor
        }
    }
    @IBInspectable var isSecureTextEntry: Bool = false {
        didSet {
            textField.isSecureTextEntry = isSecureTextEntry
        }
    }
    @IBInspectable var isAutoCorrect: Bool = true {
        didSet {
            textField.autocorrectionType = UITextAutocorrectionType(rawValue: (isAutoCorrect ? 2 : 1)) ?? .default
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
            textField.leftViewMode = .always
            textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: cornerRadius, height: height))
            textField.layer.cornerRadius = cornerRadius
            textField.layer.masksToBounds = true
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
