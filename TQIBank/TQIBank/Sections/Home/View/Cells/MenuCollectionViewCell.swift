//
//  MenuCollectionViewCell.swift
//  TQIBank
//
//  Created by Roberth Diorges on 13/01/22.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var menuNameLabel: UILabel!
    
    public func setup(option: MenuOption) {
        
//        setShadowView()
        menuNameLabel.text = option.name
        
        var iconName: String {
            switch option.type {
            case .card:
                return "cardIcon"
            case .deposit:
                return "depositIcon"
            case .extract:
                return "extractIcon"
            case .payment:
                return "payIcon"
            case .pix:
                return "pixIcon"
            }
        }
        iconImage.image = UIImage(named: iconName)
    }
    
//    private func setShadowView() {
//        shadowView.dropShadow(color: .gray, opacity: 4, offSet: .zero, radius: 4, scale: false)
//    }
}
