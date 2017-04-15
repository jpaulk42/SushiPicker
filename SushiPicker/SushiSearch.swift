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
     Admittedly the algorithmic complexity is quite high, however, the data sets accessed in
    the algorithm will always be small and therefore the runtime of the search will be too small to
    impact the overall functionality and responsiveness of the app.
     */
    public static func search()
    {
        for ing in Sushi.userIngredients //iterate through user selected ingredients
        {
            for (roll, ings) in Sushi.rolls //iterate through dictionary of known sushi rolls and their ingredients
            {
                // check if roll ingredients contains user selected ingredients and make sure roll has not already been added to the selectedRollsForUser array
                if ings.contains(ing) && !Sushi.selectedRollsForUser.contains(roll) 
                {
                    Sushi.selectedRollsForUser.append(roll)
                }
            }
        }
    }
}
