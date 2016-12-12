//
//  GlassBuildingBuilder.swift
//  BuilderPattern
//
//  Created by Ashif Iqbal on 09/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class GlassBuildingBuilder: BuildingBuilder {
    
    var building : Building = Building()
    
    func getPreparedBuilding()->Building?{
        return building
    }
    
    func buildFloor(){
        building.addComponents(component: "Glass: Floor built")
    }
    
    func buildWalls(){
        building.addComponents(component: "Glass: Walls built")
    }
    
    func buildRoofs(){
        building.addComponents(component: "Glass: Roofs built")
    }
    
    func buildDoors(){
        building.addComponents(component: "Glass: Doors built")
    }
    
    func buildWindows(){
        building.addComponents(component: "Glass: Windows built")
    }
}
