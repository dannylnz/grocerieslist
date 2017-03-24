//
//  SecondViewController.swift
//  To Do Lists
//
//  Created by Daniele Lanzetta on 13.04.16.
//  Copyright © 2016 Daniele Lanzetta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var item: UITextField!
    @IBAction func addItem(_ sender: AnyObject) {
        toDoList.append(item.text!)
     item.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    
}

}
