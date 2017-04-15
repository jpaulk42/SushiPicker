//
//  SuggestedRollsViewController.swift
//  SushiPicker
//
//  Created by James Paulk on 4/12/17.
//  Copyright © 2017 James Paulk. All rights reserved.
//

import UIKit

class SuggestedRollsViewController: UIViewController
{
    @IBOutlet weak var label: UILabel!
    
    override func viewWillAppear(_ animated: Bool)
    {
        label.text = Sushi.selectedRollsForUser.description
    }
}
