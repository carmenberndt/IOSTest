//
//  Goals.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import SwiftUI

struct GoalsView : View {
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
struct GoalsView_Previews : PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}
#endif
