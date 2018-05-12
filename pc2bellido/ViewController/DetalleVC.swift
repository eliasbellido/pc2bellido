//
//  DetalleVC.swift
//  pc2bellido
//
//  Created by Elias Daniel on 10/05/18.
//  Copyright © 2018 Elias Daniel. All rights reserved.
//

import UIKit

class DetalleVC: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var telefono : Mensajeria?
    
    
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imagen.image = UIImage(named: (self.telefono?.foto)!)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda") as! DetalleTVCell
        
        switch indexPath.row{
        case 0:
            celda.lblLlave.text = "Modelo: "
            celda.lblValor.text = self.telefono?.nombre
        case 1:
            celda.lblLlave.text = "Marca: "
            celda.lblValor.text = self.telefono?.marca
        case 2:
            celda.lblLlave.text = "Precio: "
            celda.lblValor.text = String(format:"%.2f", (self.telefono?.precio)!)
            
            
            
        default:
            celda.lblLlave.text=""
            celda.lblValor.text=""
        }
        
        return celda
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
