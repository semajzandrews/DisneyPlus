//
//  SplashScreen.swift
//  DisneyPlus
//
//  Created by Semaj Andrews on 4/4/22.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var startAnimation = false
    @State var bowAnimation = false
    
    var body: some View {
        
        ZStack {
            Color("BG").ignoresSafeArea()
            
            GeometryReader { proxy in

                let size = proxy.size
                
                ZStack {
                    
                    Circle()
                        .trim(from: 0, to: bowAnimation ? 0.5 : 0)
                        .stroke(
                            .linearGradient(.init(colors:
                                                    [Color("Gradient1"),
                                                     Color("Gradient2"),
                                                     Color("Gradient3"),
                                                     Color("Gradient4"),
                                                     Color("Gradient5").opacity(0.5),
                                                     Color("BG"),
                                                     Color("BG"),
                                                     Color("BG")]),
                                startPoint: .leading, endPoint: .trailing),
                                style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round)
                        
                            
                            
                        )
                        .frame(width: size.width / 2, height: size.width / 2)
                        .rotationEffect(.init(degrees: -200))
                        .offset(y: 10)
                        
                    
                    HStack(spacing: -20){
                        
                        Image(("disney"))
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: size.width / 1.9, height: size.width / 1.9)
                        
                        Image("plus")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                        
                        

                        
                    }
                    .foregroundColor(.white)
         
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
            }
        }
        .onAppear {
            
            // DELAY FOR 3 SECONDS
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                withAnimation(.linear(duration: 2)){
                    bowAnimation.toggle()
                }
            }
            
        }
 
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
