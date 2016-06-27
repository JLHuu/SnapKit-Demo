//
//  XLLeftCell.swift
//  SnapKitDemo
//
//  Created by knmk0002 on 16/6/27.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

import UIKit
import SnapKit

class XLLeftCell: UITableViewCell {
    var ContainLab:UILabel
    lazy var HeadImg:UIImageView? = {
        return UIImageView.init(image: UIImage.init(named: "Left.jpg"))
    }()
    private var ImgV:UIImageView?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        ContainLab = UILabel()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.InitUI()
    }
    private func InitUI(){
        self.selectionStyle = UITableViewCellSelectionStyle.None
        self.backgroundColor = UIColor.clearColor()
        self.contentView.backgroundColor = UIColor.clearColor()
        self.contentView.addSubview(HeadImg!)
        HeadImg?.snp_makeConstraints(closure: { (make) in
            make.left.equalTo(self.contentView).offset(15)
            make.top.equalTo(self.contentView).offset(15)
            make.width.equalTo(40)
            make.height.equalTo(40)
        })
        let BacImgv:UIImageView = UIImageView.init()
        BacImgv.image = IMG
        self.contentView.addSubview(BacImgv)
        BacImgv.snp_makeConstraints { (make) in
            make.left.equalTo((HeadImg?.snp_right)!).offset(20)
            make.top.equalTo(self.contentView).offset(15)
            make.bottom.equalTo(self.contentView).offset(-15)
            make.width.lessThanOrEqualTo(200)
            make.height.lessThanOrEqualTo(1000)
        }
        ContainLab.numberOfLines = 0
        ContainLab.backgroundColor = UIColor.clearColor()
        self.contentView.addSubview(ContainLab)
        ContainLab.snp_makeConstraints(closure: { (make) in
            make.edges.equalTo(BacImgv).inset(UIEdgeInsets.init(top: 20, left: 20, bottom: 20, right: 20))
        })
    }
    internal func ConfigCellWithContain(contain:String){
        ContainLab.text = contain
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
