//
//  IngredientCell.swift
//  SushiPicker
//
//  Created by James Paulk on 4/10/17.
//  Copyright © 2017 James Paulk. All rights reserved.
//

import UIKit

class IngredientCell: UITableViewCell
{

    public var userSelected = false

    @IBOutlet weak var ingredientLabel: UILabel!
    
    @IBOutlet weak var selectButton: UIButton!
    
    @IBAction func selectIngredient(_ sender: UIButton)
    {
        guard let tv = self.superview?.superview as? UITableView else { print("early exit sorry");return }

        if userSelected == false
        {
            userSelected =  true
            IngredientButtons.buttonStates[sender.tag] = "Remove"
            IngredientButtons.buttonColors[sender.tag] = .red
            let indexPath = IndexPath(row: sender.tag, section: 0)
            tv.reloadRows(at: [indexPath], with: .none)
        }
        else
        {
            userSelected = false
            IngredientButtons.buttonStates[sender.tag] = "Select"
            IngredientButtons.buttonColors[sender.tag] = .blue
            let indexPath = IndexPath(row: sender.tag, section: 0)
            tv.reloadRows(at: [indexPath], with: .none)
        }
    }
}
