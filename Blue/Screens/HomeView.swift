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
                Spacer()
                ZStack {
                    CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                    Image("camera")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .offset(y: isAnimating ? 35 : -35)
                        .animation(Animation.easeOut(duration: 4).repeatForever(), value: isAnimating
                        )
                }
                
                // MARK: - Center
                Text("this is working…for now")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                
                // MARK: - Footer
                Spacer()
                
                NavigationLink(destination:ScannerView()){
                    Image("camera")
                        .resizable()
                        .scaledToFit()
                        .frame(width:70,height:70)
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
    

