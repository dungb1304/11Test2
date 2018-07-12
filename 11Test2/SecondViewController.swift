//
//  SecondViewController.swift
//  11Test2
//
//  Created by DungB96 on 2018/05/18.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var textLabel : String?
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var txtText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if textLabel != nil {
        displayLabel.text = textLabel
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        textLabel = txtText.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
