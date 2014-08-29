//
//  PhuongTrinhBac2.swift
//  Day02
//
//  Created by Ci Viet on 8/21/14.
//  Copyright (c) 2014 CiViet. All rights reserved.
//

import UIKit

class PhuongTrinhBac2: UIViewController {

    @IBOutlet weak var nhapA: UITextField!
    @IBOutlet weak var nhapB: UITextField!
    @IBOutlet weak var nhapC: UITextField!
    @IBOutlet weak var nghiemX1: UILabel!
    @IBOutlet weak var nghiemX2: UILabel!
    @IBAction func giaiPtBac2(sender: AnyObject) {
        let nhapA: Float = Float(self.nhapA.text.toInt()!)
        let nhapB: Float = Float(self.nhapB.text.toInt()!)
        let nhapC: Float = Float(self.nhapC.text.toInt()!)
        
        if nhapA != 0{
            let delta: Float = nhapB * nhapB - 4 * nhapA * nhapC
            if delta > 0 {
                self.nghiemX1.text = "\(-(nhapB) + sqrtf(delta)/(2 * nhapA))"
                
                self.nghiemX2.text = "\(-(nhapB) - sqrtf(delta)/(2 * nhapA))"
            }
            if delta == 0 {
                 self.nghiemX1.text = "\(-(nhapB) / (2 * nhapA))"
                 self.nghiemX2.text = "\(-(nhapB) / (2 * nhapA))"
            }
            if delta < 0 {
                self.nghiemX1.text = "Khong co ket qua, moi nhap lai "
                self.nghiemX2.text = "Khong co ket qua, moi nhap lai "
            }
            
        }
        else{
            println("Phuong trinh la bac 1")
        }
        
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
