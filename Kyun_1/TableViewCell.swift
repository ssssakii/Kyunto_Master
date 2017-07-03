//
//  TableViewCell.swift
//  Kyun_1
//
//  Created by 坂本のぞみ on 2016/12/03.
//  Copyright © 2016年 坂本のぞみ. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var memoLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

class CustomView: UIView {
    
    // xibファイルで定義した一番親のView
    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // xibファイル読み込み
        Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)
        
                
        // xibファイルのViewをカスタムViewクラスに追加する
        addSubview(contentView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
