//
//  UniversityCell.swift
//  Week5Day1Session2
//
//  Created by Hasan Soysal on 07/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class UniversityCell: UITableViewCell {

    @IBOutlet weak var labelName : UILabel!
    @IBOutlet weak var labelCity : UILabel!
    @IBOutlet weak var labelCapacity : UILabel!
    @IBOutlet weak var labelStatus : UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupUIFor(university : University)
    {
        labelName.text = university.name
        labelCity.text = university.city
        labelCapacity.text = "\(university.capacity)"
        switch university.universityType
        {
        case .Public:
            labelStatus.text = "Devlet Üniversitesi"
        case .Private:
            labelStatus.text = "Özel Üniversite"
        }
    }
    
    
    
    
    
    
    
    
    

}
