//
//  CapSoNhanViewController.swift
//  Day02
//
//  Created by Ci Viet on 8/19/14.
//  Copyright (c) 2014 CiViet. All rights reserved.
//

import UIKit
infix operator ^^ { } // Toan tu giua 2 toan hang: A ^^ B
//prefix: toan tu nam truoc toan hang ^^A, ++A
//postfix:toan tunam sau toan hang A^^,A--
postfix operator ^! { }

func ^^(radix: Int, power: Int) -> Int{
    return Int(pow(Double(radix), Double(power)))
}

postfix func ^! (number: Int) -> Int{
    if number == 0 || number == 1{
    return 1
    }
    var result = 1
    for i in 2...number {
        result *= i
    }
    return result
}
class CapSoNhanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        println("2^3 = \(self.capSoNhan(2, power: 3))")
        println("Cap so Nhan de quy: 2^4 = \(capSoNhanDeQuy(2, power: 4))")
        let r3 = 2 ^^ 5
        println("2^5 = \(r3) ")
        
        let r4 = 5^!
        println("\(r4)")
        
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
    // Ep kiểu - Type cast
    func capSoNhan(radix: Int, power: Int) -> Int{
        var result: Float = pow(Float(radix), Float(power))
        return Int(result)
    }
    func capSoNhanDeQuy(radix: Int, power: Int) -> Int{
        if power == 0{
            return 1
        }
        else if power == 1{
            return radix
        }
        else{
            return radix * capSoNhanDeQuy(radix, power: power - 1)
        }
    }
}
