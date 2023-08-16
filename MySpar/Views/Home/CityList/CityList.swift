//
//  CityList.swift
//  MySpar
//
//  Created by Sergey Kykhov on 16.08.2023.
//

import Foundation
import SwiftUI

struct CityList: View {
    @State private var cityInfo = CityInfo.info
    @Environment(\.presentationMode) var presentation
    @Binding var selectedCity: String

    var body: some View {
        List() {
            ForEach(cityInfo, id:\.id) { item in
                HStack{
                    Text(item.name)
                        .font(.system(size: 23))
                        .onTapGesture {
                            selectedCity = "\(item.name), \(item.region)"
                            presentation.wrappedValue.dismiss()
                        }
                        .frame(height: 40)
                }
            }
        }
    }
}
