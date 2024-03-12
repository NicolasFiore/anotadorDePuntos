//
//  JugadoresTableViewCell.swift
//  Anotador de Uno
//
//  Created by Nicolás Fiore on 10/03/2024.
//

import UIKit

class JugadoresTableViewCell: UITableViewCell {
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var puntos: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nombre.placeholder = "Nombre jugador"
        puntos.placeholder = "Puntos jugador"
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
