//
//  SeguePresentViewController.swift
//  ScreenTractionExample
//
//  Created by 백시훈 on 2022/08/14.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tabBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true,completion: nil)
    }
}
