//
//  HelloViewController.swift
//  Day1-Helloworld
//
//  Created by Le Xuan Quynh on 2019/12/04.
//  Copyright © 2019 Le Xuan Quynh. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class HelloViewController: ASViewController<ASDisplayNode> {
    private var container : ContainerNode!
    init() {
        //Make default screen type
        container = ContainerNode(node: HelloNode())
        container.backgroundColor = .white
        super.init(node: container)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
