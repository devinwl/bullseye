//
//  AboutView.swift
//  Bullseye
//
//  Created by Devin Lumley on 2020-01-03.
//  Copyright © 2020 Devin Lumley. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    struct HeadingTextStyle: ViewModifier {
        func body(content: Content) -> some View {
            content
            .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding(.top, 20)
                .padding(.bottom, 20)
        }
    }
    
    struct BodyTextStyle: ViewModifier {
        func body(content: Content) -> some View {
            content
            .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .padding(.leading, 60)
                .padding(.trailing, 60)
                .padding(.bottom, 20)
        }
    }
    
    var body: some View {
        Group {
        VStack {
            Text("🎯 Bullseye 🎯").modifier(HeadingTextStyle())
            Text("This is Bullseye, the game where you can earn points and earn fame by dragging a slider.").modifier(BodyTextStyle())
            Text("Your goal is to place the slider as close as possible to the target value.  The closer you are, the more points you score.").modifier(BodyTextStyle()).lineLimit(nil).multilineTextAlignment(.center)
            Text("Enjoy!").modifier(BodyTextStyle()).lineLimit(nil)
        }
    .navigationBarTitle("About Bullseye")
        .background(Color(red: 255 / 255, green: 214.0 / 255.0, blue: 179.0 / 255))
        }
    .background(Image("Background"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
