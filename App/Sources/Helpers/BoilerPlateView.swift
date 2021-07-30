//
//  BoilerPlateView.swift
//  ULD
//
//  Created by Nikita on 30.07.2021.
//
import UIKit

class BoilerPlateView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup() {}
}
