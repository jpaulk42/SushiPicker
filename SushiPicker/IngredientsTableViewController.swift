//
//  IngredientsTableViewController.swift
//  SushiPicker
//
//  Created by James Paulk on 4/10/17.
//  Copyright © 2017 James Paulk. All rights reserved.
//

import UIKit

class IngredientsTableViewController: UITableViewController
{
    @IBAction func continueToSuggestedRollsVC()
    {
        var k = 0
        for i in IngredientButtons.buttonStates
        {
            if i == "Remove"
            {
                Sushi.userIngredients.append(Sushi.ingredients[k])
            }
            k += 1
        }
        print("\(Sushi.userIngredients)")
        SushiSearch.search()
        
        performSegue(withIdentifier: "toSuggestedRollsVC", sender: nil)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Sushi.ingredients.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> IngredientCell
    {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath) as? IngredientCell
            else { print("early exit");return IngredientCell() }
               
        cell.ingredientLabel.text = Sushi.ingredients[indexPath.row]
        cell.selectButton.setTitle(IngredientButtons.buttonStates[indexPath.row], for: .normal)
        cell.selectButton.setTitleColor(IngredientButtons.buttonColors[indexPath.row], for: .normal)
        cell.selectButton.tag = indexPath.row
        return cell
    }
}

public struct IngredientButtons
{
    public static var buttonStates: [String] = Array(repeating: "Select", count: Sushi.ingredients.count)
    public static var buttonColors: [UIColor] = Array(repeating: .blue, count: Sushi.ingredients.count)
}
