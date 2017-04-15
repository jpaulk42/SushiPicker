//
//  SushiSearch.swift
//  SushiPicker
//
//  Created by James Paulk on 4/12/17.
//  Copyright © 2017 James Paulk. All rights reserved.
//

import Foundation

public class SushiSearch
{
    
    /*
     method for searching through known sushi rolls based on users selected ingredients
     
     */
    public static func search()
    {
        for ing in Sushi.userIngredients
        {
            for (roll, ings) in Sushi.rolls
            {
                if ings.contains(ing) && !Sushi.selectedRollsForUser.contains(roll)
                {
                    Sushi.selectedRollsForUser.append(roll)
                }
            }
        }
        print(Sushi.selectedRollsForUser.description)
    }
}
