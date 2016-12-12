//
//  ViewController.swift
//  BuilderPattern
//
//  Created by Ashif Iqbal on 09/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var typeSelectionControl: UISegmentedControl!
    @IBOutlet weak var storeySelectionField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        typeSelectionControl.selectedSegmentIndex = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buildBuilding(type: Int, storeySize: Int){
        if storeySize > 1{
            let director = MultipleStoreyDirector()
            
            let buildingBuilder : BuildingBuilder = type == 0 ? BrickBuildingBuilder() : GlassBuildingBuilder()
            director.buildUpBuilding(builder: buildingBuilder, storeySize: storeySize)
            let building: Building = buildingBuilder.getPreparedBuilding()!
            building.renderBuilding()
        }
        else{
            let director = SingleStoreyDirector()
            
            let buildingBuilder : BuildingBuilder = type == 0 ? BrickBuildingBuilder() : GlassBuildingBuilder()
            director.buildUpBuilding(builder: buildingBuilder, storeySize: storeySize)
            let building: Building = buildingBuilder.getPreparedBuilding()!
            building.renderBuilding()
        }
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        if let text = storeySelectionField.text{
            if !text.isEmpty{
                let num = Int(text)
                if num != nil{
                    if num! > 0{
                        buildBuilding(type: self.typeSelectionControl.selectedSegmentIndex, storeySize: num!)
                        return
                    }
                }
            }
        }
        print("invalid input")
    }
    
    @IBAction func typeSelectionValueChanged(_ sender: UISegmentedControl) {
        
    }

}

