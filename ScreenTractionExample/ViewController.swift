//
//  ViewController.swift
//  ScreenTractionExample
//
//  Created by 백시훈 on 2022/08/14.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "codePushViewController") as? CodePushViewController else{ return }
        viewController.name = "Gunter"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tabCodePresnetButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentController") as? CodePrenetViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunter"
        viewController.delegate = self
        self.present(viewController, animated: true)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushControllerViewController{
            viewController.name = "Gunter"
        }
    }
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

