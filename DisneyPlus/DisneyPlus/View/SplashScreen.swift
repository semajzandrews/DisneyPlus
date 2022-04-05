//
//  SplashScreen.swift
//  DisneyPlus
//
//  Created by Semaj Andrews on 4/4/22.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color("BG").ignoresSafeArea()
            
            // MARK: DISNEY LOGO
            GeometryReader { proxy in
                
                // FOR SCREEN SIZE
                let size = proxy.size
                
                ZStack {
                    Image(("disney"))
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(width: size.width / 1.9, height: size.width / 1.9)
         
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
