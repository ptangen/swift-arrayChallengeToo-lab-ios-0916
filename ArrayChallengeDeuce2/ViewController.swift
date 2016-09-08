//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = [] // ["Rob", "Catherine", "Paul", "Dom"] //[] // "Albert Einstein", "Cher", "Neil deGrasse Tyson", "Yoshi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newCustomer = "Bob"
        print(addNameToDeliLine(newCustomer))
        print(nowServing())
        print(deliLineDescription())
        
    }
    
    func addNameToDeliLine(name:String) -> String {
        var results = ""
        
        if deliLine.isEmpty{
            results = "Welcome \(name), you're first in line!";
            deliLine.append(name)
        } else if name == "Billy Crystal"{
            results = "Welcome Billy! You can sit wherever you like."
            deliLine.insert(name, atIndex: 0)
        } else if name == "Meg Ryan"{
            results = "Welcome Meg! You can sit wherever you like."
            deliLine.insert(name, atIndex: 0)
        } else {
            results = "Welcome \(name), you're number \(deliLine.count + 1) in line."
            deliLine.append(name)
        }
        
        return results
    }
    
    func nowServing() -> String {
        var results = ""
        if deliLine.isEmpty{
            results = "There is no one to be served."
        } else {
            results = "Now serving \(deliLine[0])!"
            deliLine.removeAtIndex(0)
        }
        return results
    }
    
    func deliLineDescription() -> String {
        var description = ""
        if deliLine.isEmpty{
            description = "The line is currently empty."
        } else {
            description = "The line is:"
            for (index, customer) in deliLine.enumerate() {
                description = "\(description)\n\(index+1). \(customer)"
            }
        }
        return description
    }

}
