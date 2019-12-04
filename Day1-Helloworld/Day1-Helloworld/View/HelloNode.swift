//
//  HelloNode.swift
//  Day1-Helloworld
//
//  Created by Le Xuan Quynh on 2019/12/04.
//  Copyright © 2019 Le Xuan Quynh. All rights reserved.
//

import AsyncDisplayKit

class HelloNode: ASDisplayNode {
    private let titleNode: ASTextNode
    private let imageNode: ASNetworkImageNode

    override init() {
        titleNode = ASTextNode()
        imageNode = ASNetworkImageNode()
        imageNode.url = URL(string: "https://tinhphieulang.files.wordpress.com/2014/04/4a3669c0_7e528d1e_dsc07312_1.jpg")

        let title = NSAttributedString(string: "Hello world", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17)])
        titleNode.attributedText = title

        super.init()

        self.addSubnode(self.titleNode)
        self.addSubnode(self.imageNode)
    }

    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let titleCenterLayout = ASCenterLayoutSpec(centeringOptions: .XY, sizingOptions: [], child: self.titleNode)
        let verticalStack = ASStackLayoutSpec.vertical()
        verticalStack.children = [
            ASRatioLayoutSpec(ratio: 1.0, child: imageNode),
            ASRatioLayoutSpec(ratio: 1.0, child: titleCenterLayout)
        ]

        return verticalStack
    }
}

class ContainerNode: ASDisplayNode {
    private let contentNode: ASDisplayNode

    init(node: ASDisplayNode) {
        contentNode = node
        super.init()
    }

    // MARK: - Node life cycle
    override func didLoad() {
        super.didLoad()

        //        self.contentNode.backgroundColor = .darkGray
        self.addSubnode(self.contentNode)
    }

    // MARK: - Layout
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASInsetLayoutSpec(insets: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8), child: contentNode)
    }
}

