//
//  ThreeSection.swift
//  MySpar
//
//  Created by Sergey Kykhov on 16.08.2023.
//

import Foundation

class ObserveThreeSection: ObservableObject {
    @Published var info = ThreeSection.info
}

struct ThreeSection: Identifiable, Hashable {
    let image: String
    let countBonus: Int
    let bonus = "бонусов"
    var id = UUID()
}

extension ThreeSection {
    static let info = [
        ThreeSection(image: "QR", countBonus: 0)
    ]
}

