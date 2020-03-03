//
//  ConfirmHabitViewController.swift
//  Habitual
//
//  Created by Gonzalo Birrueta on 3/2/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class ConfirmHabitViewController: UIViewController {

    var habitImage: Habit.Images!
    
    @IBOutlet weak var habitImageView: UIImageView!
    @IBOutlet weak var habitNameInputField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        updateUI()
    }

    
    private func updateUI() {
        title = "New Habit"
        habitImageView.image = habitImage.image
    }
    
    
    @IBAction func createHabitButtonPressed(_ sender: UIButton) {
        
    }
    
}
