//
//  DialogCollectionViewCell.swift
//  ImageDetection
//
//  Created by Павел Курзо on 1.11.22.
//

import UIKit

class DialogCollectionViewCell: UICollectionViewCell {
    
    var delegate: DialogCollectionViewCellDelegate?
    var index = 0
    
    @IBOutlet weak var screenImageButton: UIButton!
    
    @IBOutlet weak var screenLabel: UILabel!
    
    @IBAction func screeImageButtonTapped(_ sender: Any) {
        delegate?.screenImageButtonTapped(index: index)
    }
}

protocol DialogCollectionViewCellDelegate {
    func screenImageButtonTapped(index: Int)
}
