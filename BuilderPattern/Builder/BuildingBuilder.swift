//
//  BuildingBuilder.swift
//  BuilderPattern
//
//  Created by Ashif Iqbal on 09/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

protocol BuildingBuilder {
    
    func getPreparedBuilding()->Building?
    
    func buildFloor()
    func buildWalls()
    func buildRoofs()
    func buildDoors()
    func buildWindows()
}
