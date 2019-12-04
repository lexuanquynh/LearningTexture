//
//  ViewController.swift
//  Day1-Helloworld
//
//  Created by Le Xuan Quynh on 2019/12/04.
//  Copyright © 2019 Le Xuan Quynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onOpenScreenTouched(_ sender: UIButton) {
        //Open Texture screen here
        let helloVC = HelloViewController()
         self.navigationController?.pushViewController(helloVC, animated: true)
//        present(helloVC, animated: true, completion: nil)
    }

}

