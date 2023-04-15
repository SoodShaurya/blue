//
//  HomeView.swift
//  Blue
//
//  Created by Shaurya Sood on 4/11/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive = false
    @State private var isAnimating = false
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20) {
                
                // MARK: - Header
                NavigationLink(destination: MemoryView()){
                    HStack{
                        Spacer()
                        Image("thoughtbubble")
                            .resizable()
                            .scaledToFit()
                            .frame(width:100,height:100)
                            .padding(.top, 30.0)
                    }
                }
                Spacer()
                ZStack {
                    CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                        .padding(.top, 80.0)
                    //How about put the previous scan here?
                   /* Image("camera")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 80.0)
                        .offset(y: isAnimating ? 35 : -35)
                        .animation(Animation.easeOut(duration: 4).repeatForever(), value: isAnimating
                        )*/
                }
                
                // MARK: - Center
                Text("this is working…for now")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.top,100.0)
                
                // MARK: - Footer
                Spacer()
                
                NavigationLink(destination:ScannerView()){
                    Image("camera")
                       .resizable()
                       .scaledToFit()
                       .frame(width:120,height:120)
                       
                       
                }
                
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        isAnimating = true
                    }
                }
            }
        }
    }
}
        
        struct HomeView_Previews: PreviewProvider {
            static var previews: some View {
                HomeView()
            }
        }
    

