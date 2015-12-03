//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Yaz on 12/2/15.
//  Copyright © 2015 Yasu Tanaka. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    
    
    var pokemon:Pokemon!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name.capitalizedString
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        descriptionLbl.text = ""
        typeLbl.text = ""
        defenseLbl.text = ""
        heightLbl.text = ""
        weightLbl.text = ""
        pokedexLbl.text = ""
        attackLbl.text = ""
        
        pokemon.downloadPokemonDetails { () -> () in
            
            self.updateUI()
        }
    }
    
    func updateUI() {
        descriptionLbl.text = pokemon.description
        typeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        pokedexLbl.text = "\(pokemon.pokedexId)"
        weightLbl.text = pokemon.weight
        attackLbl.text = pokemon.attack
        
        if pokemon.nextEvolutionId == "" {
            evoLbl.text = "No Evolutions"
            nextEvoImg.hidden = true
        } else {
            nextEvoImg.hidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
            
            if pokemon.nextEvolutionLvl != "" {
                str += " - LVL \(pokemon.nextEvolutionLvl)"
            }
        }
    }


    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }


}
