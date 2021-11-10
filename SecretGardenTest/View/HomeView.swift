//
//  Home.swift
//
//  Created by Carmen on 07.11.21.
//

import SwiftUI

struct HomeView : View {
    var body: some View {
        NavigationView {
            VStack {
                Text("TODO")
            }
            .modifier(ToolBarModifier())
        }
        
    }
}


#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
