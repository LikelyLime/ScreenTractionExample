//
//  CodePrenetViewController.swift
//  ScreenTractionExample
//
//  Created by 백시훈 on 2022/08/14.
//

import UIKit

protocol SendDataDelegate: AnyObject{
    func sendData(name: String)
}

class CodePrenetViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Gunter")
        self.presentingViewController?.dismiss(animated: true)
    }
}
