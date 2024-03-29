//
//  DetalleViewController.swift
//  Tablas
//
//  Created by Reales Rectoro Myles Clarence on 29/03/24.
//

import UIKit

class DetallesViewController: UIViewController {
    
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var email: UILabel!
    var datosLista : Lista?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nombre?.text = datosLista?.nombre
        email?.text = datosLista?.email
    }
    


}
