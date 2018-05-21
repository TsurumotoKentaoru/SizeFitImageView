//
//  CustomImageView.swift
//  HackthonProject
//
//  Created by 鶴本賢太朗 on 2018/05/22.
//  Copyright © 2018年 Kentarou. All rights reserved.
//

import UIKit

class SizeFitImageView: UIImageView {
    override var intrinsicContentSize: CGSize {
        guard let image: UIImage = self.image else { return super.intrinsicContentSize }
        let imageRate: CGFloat = image.size.height / image.size.width
        let width: CGFloat = self.frame.width
        let height: CGFloat = width * imageRate
        return CGSize(width: width, height: height)
    }
}
