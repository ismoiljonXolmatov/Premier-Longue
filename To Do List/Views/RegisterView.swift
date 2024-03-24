//
//  RegisterView.swift
//  To Do List
//
//  Created by Khalmatov on 30.05.2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            HeaderView(offSet: 150, title: "Register", subtitle: "Start organizing your todos", angel: -15, background: .orange, weightSubtitle: 25)
            Spacer()
        }
     }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
