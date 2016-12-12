//
//  MultipleStoreyDirector.swift
//  BuilderPattern
//
//  Created by Ashif Iqbal on 09/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class MultipleStoreyDirector: BuildingDirector {
    func buildUpBuilding(builder: BuildingBuilder, storeySize: Int) {
        print("buildUp \(storeySize) storey Building")
        
        builder.buildFloor()
        builder.buildWalls()
        builder.buildRoofs()
        builder.buildDoors()
        builder.buildWindows()
    }
}
