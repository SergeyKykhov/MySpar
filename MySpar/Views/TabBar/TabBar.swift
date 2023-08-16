//
//  TabBar.swift
//  MySpar
//
//  Created by Sergey Kykhov on 16.08.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                Home()
                    .tabItem {
                        Image(systemName: "homekit")
                        Text("Главная")
                    }
                Catalog()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Каталог")
                    }
                Basket()
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                Profile()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
            }
            .accentColor(.green)
        })
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}


