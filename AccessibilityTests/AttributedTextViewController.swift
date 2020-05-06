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
        

        let firstString = "This is a simple "
        let secondString = "link"
        let thirdString = " out"

        let fullText = "\(firstString)\(secondString)\(thirdString)"
        
        let fullAttributedText = NSMutableAttributedString(string: fullText, attributes: [.foregroundColor: UIColor.black])
        let range = NSString(string: fullText).range(of: secondString)
        fullAttributedText.addAttributes([.foregroundColor: UIColor.blue, .accessibilityTextCustom: "Linkout"], range: range)
//        let accessibilityAttributedHint = NSMutableAttributedString(string: fullText)
//        accessibilityAttributedHint.addAttributes([NSAttributedString.Key.accessibilityTextCustom: ""], range: range)
//        fullAttributedText.accessibilityAttributedHint = accessibilityAttributedHint

        detailDescriptionLabel.attributedText = fullAttributedText
        //detailDescriptionLabel.accessibilityTraits.insert(UIAccessibilityTraits.button)
        detailDescriptionLabel.accessibilityAttributedHint = fullAttributedText
    }
}

