//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Paweł Dylewski on 01.02.2019.
//  Copyright © 2019 Paweł Dylewski. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leaugeType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leaugeType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leaugeType: "coed")
    }
    
    func selectLeague (leaugeType: String) {
        player.dessiredLeague = leaugeType
        nextButton.isEnabled  = true
    }
}
