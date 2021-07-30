//
//  Configurable.swift
//  ULD
//
//  Created by Nikita on 30.07.2021.
//

import UIKit

protocol Configurable {}

extension Configurable {
    @discardableResult
    func configure(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}

extension UIView: Configurable {}
