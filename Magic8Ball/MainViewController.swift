//
//  MainViewController.swift
//  Magic8Ball
//
//  Created by Konstantin Portnov on 3/7/19.
//  Copyright © 2019 Konstantin Portnov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var askButton: UIButton!
    
    @IBOutlet var answerLabel: UILabel!
    
    @IBAction func ask() {
        
        let variants = [
            "En mi opinión, sí",
            "Es cierto",
            "Es decididamente así",
            "Probablemente",
            "Buen pronóstico",
            "Todo apunta a que sí",
            "Sin duda",
            "Sí",
            "Sí - definitivamente",
            "Debes confiar en ello",
            "Respuesta vaga, vuelve a intentarlo",
            "Pregunta en otro momento",
            "Será mejor que no te lo diga ahora",
            "No puedo predecirlo ahora",
            "Concéntrate y vuelve a preguntar",
            "Puede ser",
            "No cuentes con ello",
            "Mi respuesta es no",
            "Mis fuentes me dicen que no",
            "Las perspectivas no son buenas",
            "Muy dudoso"
        ]

        let randomIndex = Int.random(in: 0..<variants.count)
        
        let answer = variants[randomIndex]
        
        print("Answer is " + answer)
        answerLabel.text = answer
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        askButton.setTitle("Preguntar", for: .normal)
        answerLabel.text = nil
    }
}

