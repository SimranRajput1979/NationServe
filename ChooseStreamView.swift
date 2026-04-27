import SwiftUI

struct ChooseStreamView: View {

    var body: some View {

        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 30) {

                Text("Choose Your Stream")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 40)

                Spacer()

                VStack(spacing: 20) {

                    // ✅ CIVIL SERVICES
                    NavigationLink(destination: CivilServicesView()) {
                        StreamCard(
                            title: "Civil Services",
                            subtitle: "Administration • Policy • Leadership"
                        )
                    }

                    // ✅ DEFENCE SERVICES
                    NavigationLink(destination: DefenceServicesView()) {
                        StreamCard(
                            title: "Defence Services",
                            subtitle: "Army • Navy • Air Force"
                        )
                    }

                    // ✅ JUDICIARY SERVICES
                    NavigationLink(destination: JudiciaryServicesView()) {
                        StreamCard(
                            title: "Judiciary Services",
                            subtitle: "Judge • Law • Constitution"
                        )
                    }
                }

                Spacer()
            }
            .padding()
        }
    }
}


struct StreamCard: View {

    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 6) {

            // MAIN TITLE
            Text(title)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.black)

            // SUBTITLE
            Text(subtitle)
                .font(.system(size: 14))
                .foregroundColor(.black.opacity(0.6))
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 80)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.35), radius: 6)
        )
        .contentShape(Rectangle()) // ✅ ensures full tap area
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        StreamCard(
            title: "Civil Services",
            subtitle: "Administration • Policy • Leadership"
        )
        .padding()
    }
}


#Preview {
    ChooseStreamView()
}

