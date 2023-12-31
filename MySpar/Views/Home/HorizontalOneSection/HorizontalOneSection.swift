//
//  HorizontalOneSection.swift
//  MySpar
//
//  Created by Sergey Kykhov on 16.08.2023.
//

import SwiftUI

struct HorizontalOneSection: View {

    @ObservedObject var dataModel = ObserveOneSection()
    let rows: [GridItem] = Array(repeating: .init(.fixed(250 )), count: 1)

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: rows) {
                ForEach(dataModel.info, id:\.id) { item in
                    LazyVStack(alignment: .center) {
                        Image(item.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                            .padding(4)
                            .overlay(
                                Circle().stroke(Color.green, lineWidth: 4)
                            )
                            .clipShape(Circle())

                        Text(item.text)
                            .font(.system(size: 10))
                            .foregroundColor(.black)
                            .frame(maxWidth: 70)
                            .multilineTextAlignment(.center)
                            .lineSpacing(2)
                    }
                    .padding(5)
                }
            }
            .frame(height: 100)
            .padding([.leading, .trailing, .top], 10)
        }
    }
}

struct HorizontalOneSection_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalOneSection()
    }
}
