//
//  ColeccionViewController.swift
//  Tablas
//
//  Created by Reales Rectoro Myles Clarence on 30/03/24.
//

import UIKit

class ColeccionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var coleccion: UICollectionView!
    var lista = [Lista]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        coleccion.delegate = self
        coleccion.dataSource = self

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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coleccion.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! CeldaCollectionViewCell
        let list = lista[indexPath.row]
        cell.nombre.text = list.nombre
        cell.imagen.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }
    
     

}
