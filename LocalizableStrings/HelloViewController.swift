//
//  HelloViewController.swift
//  LocalizableStrings
//
//  Created by Plenumsoft on 08/11/17.
//  Copyright © 2017 Majesova. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    
    var name = "";
    
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = String.localizedWithFormat(key:"app.hola", name)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
