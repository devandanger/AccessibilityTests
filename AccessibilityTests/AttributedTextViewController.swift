//
//  DetailViewController.swift
//  AccessibilityTests
//
//  Created by Evan Anger on 5/5/20.
//  Copyright © 2020 Mighty Strong. All rights reserved.
//

import UIKit

class AttributedTextViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let detailDescriptionLabel = UILabel()
        detailDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(detailDescriptionLabel)
        
        detailDescriptionLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        detailDescriptionLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        

        let firstAttributes: [NSAttributedString.Key: Any] =
            [
                .backgroundColor: UIColor.green,
                NSAttributedString.Key.kern: 10
            ]
        let secondAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]

        let firstString = NSMutableAttributedString(string: "Haters ", attributes: firstAttributes)
        let secondString = NSAttributedString(string: "gonna ", attributes: secondAttributes)
        let thirdString = NSAttributedString(string: "hate")
        firstString.accessibilityAttributedHint = NSMutableAttributedString(string: "Link")

        firstString.append(secondString)
        firstString.append(thirdString)
        detailDescriptionLabel.attributedText = firstString
    }
}

