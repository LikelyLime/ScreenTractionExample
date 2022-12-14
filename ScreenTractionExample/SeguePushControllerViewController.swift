//
//  SeguePushControllerViewController.swift
//  ScreenTractionExample
//
//  Created by 백시훈 on 2022/08/14.
//

import UIKit

class SeguePushControllerViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }

    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
