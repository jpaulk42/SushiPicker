//
//  Sushi.swift
//  SushiPicker
//
//  Created by James Paulk on 4/11/17.
//  Copyright © 2017 James Paulk. All rights reserved.
//
//Struct to keep track of ingredients, sushi rolls, and the arrays for user interaction
public struct Sushi
{
    static let ingredients: [String] = ["smoked salmon", "conch", "scallop", "krab salad", "krab stick", "shrimp", "yellowtail", "tuna", "eel", "soft shell crab", "steak", "fresh salmon", "octopus", "bacon", "surf clam","fish", "spicy sauce", "cream cheese", "chili paste", "eel sauce", "wasabi", "avocado", "cucumber", "green onion","garlic", "veggies", "flying fish roe","smelt roe", "tempura"]
    
    static var userIngredients: [String] = []
    
    static var selectedRollsForUser: [String] = []
    
    static let rolls: [String: [String]] =
        [
        "Alaskan":["smoked salmon", "krab stick", "avocado", "wasabi"],
        "Amazon":["tuna", "cream cheese", "fried tempura", "spicy sauce", "green onion", "avocado","krab salad"],
        "Avocado":["avocado", "spicy sauce"],
        "Backdown":["shrimp", "cream cheese", "fried tempura", "spicy sauce", "tuna", "avocado", "krab salad"],
        "Banzai":["eel", "avocado", "cucumber", "spicy sauce"],
        "Black Dragon":["soft shell crab","avocado","cucumber","green onion","spicy sauce","eel","eel sauce"],
        "California":["krab stick", "avocado","cucumber","flying fish roe","wasabi"],
        "Caterpilar":["shrimp","cucumber","green onion","smelt roe", "avocado"],
        "Cowboy":["steak", "avocado","green onion","spicy sauce"],
        "Creamy Crunchy Shrimp":["shrimp","tempura","cream cheese","spicy sauce"],
        "Crunchy Shrimp":["shrimp","tempura","cucumber","spicy sauce"],
        "Crunchy Tuna":["tuna", "tempura","green onion","spicy sauce"],
        "Cucumber":["cucumber","wasabi"],
        "D.A.T":["tuna","tempura","green onion","spicy sauce","avocado"],
        "Destin":["tuna","avocado","green onion","spicy sauce"],
        "Dharma":["conch","shrimp","krab stick","flying fish roe","cucumber","spicy sauce"],
        "Eagle":["yellowtail","green onion","spicy sauce","smoke salmon"],
        "Eel":["eel","cucumber","wasabi"],
        "Fried Fish":["fish","cucumber","green onion","spicy sauce"],
        "Kaos":["tuna","avocado","krab salad","green onion","chili paste"],
        "Panhandle":["yellowtail","green onion","spicy sauce","tuna"],
        "Philly":["smoked salmon","cream cheese","avocado","green onion"],
        "Powerful Eel":["eel","flying fish roe","cucumber","garlic","wasabi","chili paste","eel sauce"],
        "Rainbow":["shrimp","cucumber","wasabi","tuna","yellowtail","fresh salmon"],
        "Red Dragon":["soft shell crab","avocado","green onion","spicy sauce","flying fish roe","tuna"],
        "Rock N Roll":["eel","cucumber","avocado","spicy sauce","smoked salmon","eel sauce"],
        "Salmon Avocado":["smoked salmon","avocado","wasabi"],
        "Sea Shell":["conch","surf clam","flying fish roe","avocado","wasabi"],
        "Soft Shell Crab":["soft shell crab","green onion","spicy sauce"],
        "Spicy Octopus":["octopus","cucumber","green onion","spicy sauce"],
        "Spicy Scallop":["scallop","cucumber","green onion","spicy sauce"],
        "Spicy Shrimp":["shrimp","cucumber", "green onion","spicy sauce"],
        "Spicy Tuna":["tuna","green onion","spicy sauce"],
        "Spider":["soft shell crab","avocado","green onion","spicy sauce","eel sauce"],
        "Super Crunchy Shrimp":["shrimp","avocado","green onion","flying fish roe","fried tempura","spicy sauce"],
        "Surf N Turf":["steak","green onion","spicy sauce","shrimp","soft shell crab","fish"],
        "TNT":["tuna","tempura","green onion","spicy sauce","avocado","eel sauce","chili paste"],
        "Toshi":["scallop","green onion","spicy sauce","smoked salmon"],
        "Tuna":["tuna","wasabi"],
        "Veggie":["veggies","spicy sauce"],
        "Yellowtail Green Onion":["yellowtail","green onion","wasabi"],
        "Yokozuna":["shrimp","tuna","yellowtail","fresh salmon","cucumber","spicy sauce"],
        "Zoo":["shrimp","scallop","bacon","green onion","spicy sauce","smoke salmon"]
        ]
}
