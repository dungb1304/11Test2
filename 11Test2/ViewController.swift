//
//  ViewController.swift
//  11Test2
//
//  Created by DungB96 on 2018/05/18.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SecondViewController{
            
            viewController.textLabel = inputText.text
        }
    }
    
    @IBAction func unwind(sender: UIStoryboardSegue ){
        let vc = sender.source as? SecondViewController
        inputText.text = vc?.textLabel
    }
    
    
}

