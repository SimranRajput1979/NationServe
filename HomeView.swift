import SwiftUI

import SwiftUI

struct HomeView: View {
    
    @State private var animate = false
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                // MARK: - Background Image
                Image("Image")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .blur(radius: 6)
                
                // MARK: - Dark Overlay
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.black.opacity(0.35),
                        Color.black.opacity(0.55)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                VStack {
                    
                    // MARK: - App Name & Tagline
                    VStack {
                        
                        // ✅ Animated logo ONLY (no underline)
                        AnimatedNationServe()
                            .shadow(color: .black.opacity(0.6),
                                    radius: 6, x: 0, y: 3)
                        
                        VStack(spacing: 2) {
                            Text("One app. One roadmap.")
                                .font(.system(size: 18, weight: .medium, design: .serif))
                                .foregroundColor(.white.opacity(0.9))
                            
                            Text("Many ways to serve the nation.")
                                .font(.system(size: 18, weight: .medium, design: .serif))
                                .foregroundColor(.white.opacity(0.9))
                        }
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                        .padding(.top, 20)
                    }
                    .padding(.top, 70)
                    
                    Spacer()
                    
                    // MARK: - Navigation Button
                    NavigationLink(destination: ChooseStreamView()) {
                        Text("Choose Path")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .frame(height: 54)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(16)
                            .scaleEffect(animate ? 1.05 : 1.0)
                            .shadow(color: .black.opacity(0.4),
                                    radius: animate ? 14 : 6)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 50)
                    .onAppear {
                        withAnimation(
                            .easeInOut(duration: 1.3)
                                .repeatForever(autoreverses: true)
                        ) {
                            animate = true
                        }
                    }
                }
            }
            // ✅ REMOVES TOP NAV BAR LINE
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct AnimatedNationServe: View {
    
    @State private var animate = false
    
    var body: some View {
        ZStack {
            
            // Base text (greyish, readable)
            VStack(spacing: -14) {
                Text("NATION")
                Text("SERVE")
            }
            .font(.system(size: 52, weight: .heavy))
            .kerning(2.2)
            .foregroundColor(Color.white.opacity(0.45)) // greyish tone
            
            // White highlight sweep
            VStack(spacing: -14) {
                Text("NATION")
                Text("SERVE")
            }
            .font(.system(size: 52, weight: .heavy))
            .kerning(2.2)
            .foregroundColor(Color.white) // pure white
            .mask(
                LinearGradient(
                    colors: [
                        Color.white.opacity(0.0),
                        Color.white.opacity(0.5),
                        Color.white.opacity(0.0)
                    ],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .frame(width: 140)                     // slightly narrower
                .offset(x: animate ? 180 : -180)
            )
        }
        .frame(height: 140) // keeps it centered
        .onAppear {
            withAnimation(
                .linear(duration: 1.6)                // ⬅️ faster & readable
                    .repeatForever(autoreverses: false)
            ) {
                animate = true
            }
        }
    }
}

#Preview {
    HomeView()
}

