//
//  TextFieldCollectionView.swift
//  EmojiArt
//
//  Created by Chase McElroy on 5/20/20.
//  Copyright © 2020 ChaseMcElroy. All rights reserved.
//

import UIKit

class TextFieldCollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField! {
        didSet {
            textField.delegate = self
//            textField.clearsOnBeginEditing = true
        }
    }
    
    var resignationHandler: (()-> Void)?
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        resignationHandler?()
//        textField
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
