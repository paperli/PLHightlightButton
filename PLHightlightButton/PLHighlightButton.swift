//
//  PLHighlightButton.swift
//  PLHightlightButton
//
//  Created by Paper Lee on 17/07/2017.
//  Copyright © 2017 paperworkStudio. All rights reserved.
//

import UIKit

class PLHighlightButton: UIButton {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        super.draw(rect)
        
        self.layer.cornerRadius = 7
        self.clipsToBounds = true
    }
    
    override var isHighlighted: Bool {
        didSet {
            if (isHighlighted) {
                UIView.transition(with: self, duration: 0.4, options: [.transitionCrossDissolve], animations: {
                    self.backgroundColor = UIColor.lightGray
                    //self.isHighlighted = true
                }, completion: { (complet) in
                    // TODO
                })
            } else {
                UIView.transition(with: self, duration: 0.4, options: [.transitionCrossDissolve], animations: {
                    self.backgroundColor = UIColor.clear
                    //self.isHighlighted = true
                }, completion: { (complet) in
                    // TODO
                })
            }
        }
    }

}
