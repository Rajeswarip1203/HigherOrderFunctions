//
//  ViewController.swift
//  HigherOrderFunctions
//
//  Created by P, Rajeswari on 16/08/19.
//  Copyright © 2019 P, Rajeswari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sortFunction()
        mapFunction()
        filterFunction()
        reduceFunction()
    }

    func sortFunction() {
        let numbers: [Int] = [0,3,7,8,0,1,4,6,12,14,16]
        let ascendingOrder = numbers.sorted()
        print(ascendingOrder)
    }
    
    func mapFunction() {
        let numbers: [Int] = [0,3,7,8,0,1,4,6,12,14,16]
        let numbersAsString = numbers.map { String($0)}
        print(numbersAsString)
    }
    
    func filterFunction() {
        let numbers: [Int] = [0,3,7,8,0,1,4,6,12,14,16]
        let numbersLessThanFive = numbers.filter { (number) -> Bool in
            return number < 5
        }
        print(numbersLessThanFive)
    }
    
    func reduceFunction() {
        let numbers: [Int] = [0,3,7,8,0,1,4,6,12,14,16]
        let numbersLessThanFive = numbers.reduce("") { (number, a) -> String in
            return number + String(a)
        }
        print(numbersLessThanFive)
    }

}
