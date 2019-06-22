//
//  SearchFooterView.swift
//  FlickerSearchAPP
//
//  Created by Ahmed Nasser on 6/21/19.
//  Copyright © 2019 AvaVaas. All rights reserved.
//

import UIKit
class SearchFooterView: UICollectionReusableView {
    @IBOutlet weak var progressView: UIView!
    let animation = DotsAnimation()
    var animationDots:UIView?
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func configure () {
        animationDots = animation.startDotsAnimation(superView: progressView, dotsColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        progressView.addSubview(animationDots!)
    }
    
    func dismiss() {
        animation.stopDotsAnimation(dots: animationDots)
    }

}
