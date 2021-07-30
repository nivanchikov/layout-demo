//
//  ViewController.swift
//  upwork-layout-demo
//
//  Created by Nikita on 30.07.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var contentView = ContentView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(contentView)
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

