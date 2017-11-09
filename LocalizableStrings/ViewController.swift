//
//  ViewController.swift
//  LocalizableStrings
//
//  Created by Plenumsoft on 08/11/17.
//  Copyright © 2017 Majesova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    
    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblApellido: UILabel!
    
    @IBOutlet weak var btnCheers: UIButton!
    
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtApellido: UITextField!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
    
        lblWelcome.text = String.localized(key: "app.bienvenido")
        lblNombre.text = String.localized(key: "usuario.nombre")
        lblApellido.text = String.localized(key: "usuario.apellido")
        btnCheers.setTitle(String.localized(key: "app.option.guardar"), for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! HelloViewController
        viewController.name = txtNombre.text!
    }
    
}

