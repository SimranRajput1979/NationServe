import SwiftUI

struct JudiciaryServicesView: View {

    var body: some View {
        NavigationStack {

            ZStack {
                LinearGradient(
                    colors: [Color.black, Color.gray.opacity(0.8)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(spacing: 28) {

                    VStack(spacing: 6) {
                        Text("Judiciary Services")
                            .font(.system(size: 36, weight: .heavy))
                            .foregroundColor(.white)

                        Text("Justice • Law • Constitution")
                            .font(.system(size: 16, weight: .medium, design: .serif))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    .padding(.top, 40)

                    Spacer()

                    NavigationLink {
                        JudiciaryJourneyView()
                    } label: {
                        DefenceExamCard(
                            title: "Judicial Services",
                            short: "PCS-J",
                            description: "Civil Judge / Judicial Magistrate",
                            icon: "scalemass.fill"
                        )
                    }

                    Spacer()
                }
                .padding()
            }
        }
    }
}

