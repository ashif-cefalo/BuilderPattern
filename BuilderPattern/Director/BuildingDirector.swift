//
//  BuildingDirector.swift
//  BuilderPattern
//
//  Created by Ashif Iqbal on 09/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

protocol BuildingDirector {
    func buildUpBuilding(builder: BuildingBuilder, storeySize: Int)
}
