//
//  Home.swift
//  MySpar
//
//  Created by Sergey Kykhov on 16.08.2023.
//

import SwiftUI

struct Home: View {

    @State private var showingCity = false
    @State private var selectedCity = "Москва, Москва и московская область"

    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: true){
                LazyVStack {
                    HorizontalOneSection()
                    HorizontalTwoSection()
                    HorizontalThreeSection()
                    HorizontalFourSection()
                    HorizontalFiveSection()
                    HorizontalSixSection()
                }
            }
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: MenuLeft()
                                            .navigationBarBackButtonHidden(true),
                                        label: {
                                            Image(systemName: "list.bullet")
                                                .foregroundColor(.green)
                                        }))

            .navigationBarItems(leading: Button(action:{
                self.showingCity.toggle()},
                                                label: {
                HStack(){
                    Image(systemName: "location.circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 10))
                    Text(selectedCity)
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                } .frame(maxWidth: .infinity,alignment: .leading)
                .padding(EdgeInsets(top: 3, leading: 5, bottom: 3, trailing: 5))
                .frame(width: 305, height: 22)
            }).sheet(isPresented: $showingCity) {
                CityList(selectedCity: $selectedCity)
            }
                .foregroundColor(.black)
                .background(Capsule().stroke(.gray, lineWidth: 1))
            )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
