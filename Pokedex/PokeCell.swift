//
//  PokeCell.swift
//  Pokedex
//
//  Created by Yaz on 12/1/15.
//  Copyright © 2015 Yasu Tanaka. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    func configureCell(pokemon: Pokemon){
        
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalizedString
        thumImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
}
