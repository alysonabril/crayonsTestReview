//
//  CrayonDetailViewController.swift
//  Crayons
//
//  Created by Alyson Abril on 12/3/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    public var crayon: Crayon!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = crayon.color()
    }
}
