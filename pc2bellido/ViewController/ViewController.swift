//
//  ViewController.swift
//  pc2bellido
//
//  Created by Elias Daniel on 10/05/18.
//  Copyright © 2018 Elias Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
  
    
    //let telefonos = ["f1","f2","f3","f4"]
    
    var misTelefonos:[Mensajeria] = []
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //return telefonos.count
        return misTelefonos.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! PhoneCVCell
        
       // celda.lbltelefono.text = telefonos[indexPath.row]
       // celda.imagen.image = UIImage(named: telefonos[indexPath.row])
        
        celda.lbltelefono.text = misTelefonos[indexPath.row].nombre
        celda.imagen.image = UIImage(named:misTelefonos[indexPath.row].foto)
        celda.layer.borderColor = UIColor.lightGray.cgColor
        celda.layer.borderWidth = 0.5
        
        return celda
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let celda = collectionView.cellForItem(at: indexPath)
        celda?.layer.borderColor = UIColor.gray.cgColor
        celda?.layer.borderWidth = 2
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
        let celda = collectionView.cellForItem(at: indexPath)
        
        celda?.layer.borderColor = UIColor.lightGray.cgColor
        celda?.layer.borderWidth = 0.5
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let telefonoController = MensajeriaController()
        misTelefonos = telefonoController.obtenerTelefono()
        
        let itemSize = UIScreen.main.bounds.width/2 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 2, 10, 2)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        collectionView.collectionViewLayout = layout
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destino = segue.destination as! DetalleVC
        
        let cell = sender as! PhoneCVCell
        let indexPath = self.collectionView.indexPath(for: cell)
        
        destino.telefono = self.misTelefonos[(indexPath?.row)!]
        
        
        //destino.telefono = self.misTelefonos[(collectionView.indexPathForCell)]
    
        
    }


}

