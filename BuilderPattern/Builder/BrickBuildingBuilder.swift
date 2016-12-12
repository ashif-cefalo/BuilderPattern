//
//  BrickBuildingBuilder.swift
//  BuilderPattern
//
//  Created by Ashif Iqbal on 09/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class BrickBuildingBuilder: BuildingBuilder {
    
    var building : Building = Building()
    
    func getPreparedBuilding()->Building?{
        return building
    }
    
    func buildFloor(){
        building.addComponents(component: "Brick: Floor built")
    }
    
    func buildWalls(){
        building.addComponents(component: "Brick: Walls built")
    }
    
    func buildRoofs(){
        building.addComponents(component: "Brick: Roofs built")
    }
    
    func buildDoors(){
        building.addComponents(component: "Brick: Doors built")
    }
    
    func buildWindows(){
        building.addComponents(component: "Brick: Windows built")
    }
}
