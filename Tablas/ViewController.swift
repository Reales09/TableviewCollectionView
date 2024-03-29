//
//  ViewController.swift
//  Tablas
//
//  Created by Reales Rectoro Myles Clarence on 26/03/24.
//

import UIKit

struct Lista{
    let nombre : String
    let email : String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tabla: UITableView!
    
    var lista = [Lista]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabla.delegate = self
        tabla.dataSource = self
        // Do any additional setup after loading the view.
        
        let lista1 = Lista(nombre: "Reales", email: "rclarence1234@gmail.com")
        let lista2 = Lista(nombre: "Reales2", email: "rclarence1235@gmail.com")
        let lista3 = Lista(nombre: "Reales3", email: "rclarence1236@gmail.com")
        let lista4 = Lista(nombre: "Reales4", email: "rclarence1237@gmail.com")
        let lista5 = Lista(nombre: "Reales5", email: "rclarence1238@gmail.com")
        
        lista.append(lista1)
        lista.append(lista2)
        lista.append(lista3)
        lista.append(lista4)
        lista.append(lista5)


    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabla.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        let list = lista[indexPath.row]
        cell.textLabel?.text = list.nombre
        cell.detailTextLabel?.text = list.email
        cell.imageView?.image = UIImage(systemName: "person.crop.fill")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "enviar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar" {
            if let id = tabla.indexPathForSelectedRow{
                let fila = lista[id.row]
                let destino = segue.destination as? DetallesViewController
                destino?.datosLista = fila
            }
        }
    }


}

