//
//  TableList.swift
//  FileParsingJSON
//
//  Created by Randy on 15/06/22.
//

import Foundation
import UIKit

class TableList:UITableViewCell{
    
    
    @IBOutlet var title: UILabel!
    
    @IBOutlet var author: UILabel!
    
    @IBOutlet var year: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
