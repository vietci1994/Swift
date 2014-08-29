//
//  TaoFibonaci.swift
//  Day02
//
//  Created by Ci Viet on 8/19/14.
//  Copyright (c) 2014 CiViet. All rights reserved.
//

import UIKit

class TaoFibonaci: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBAction func inRaChuoiFibonacci(sender: AnyObject) {
        if let number = self.number.text.toInt(){
            var result = self.generateFibonacci(number)
            var string=""
            for i in 0..<number{1
                string += "\(result[i]),"
            }
            self.fibonacciLabel.text = string
            
        }
        else{
            println("Couldn't convert to a number")
        }
            
        
        
    }
    @IBOutlet weak var fibonacciLabel: UILabel!
    
    func generateFibonacci (number: Int) -> [Int64]{
        var result:[Int64] = Array(count:number,repeatedValue:0)
        result[1] = 1
        for var i = 2; i < number ; i++ {
            result[i] = result[i-1] + result[i-2]
            println("\(i) = \(result[i])")
            }
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
