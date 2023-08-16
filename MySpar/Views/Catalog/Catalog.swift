//
//  Catalog.swift
//  MySpar
//
//  Created by Sergey Kykhov on 16.08.2023.
//

import SwiftUI

struct Catalog: View {
    var body: some View {
        ZStack {
            Image("One1")
                        .resizable()
                        .scaledToFit()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.1)
        }

    }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        Catalog()
    }
}

