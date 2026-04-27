import SwiftUI

struct CivilServicesView: View {

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

                    // HEADER
                    VStack(spacing: 6) {
                        Text("Civil Services")
                            .font(.system(size: 36, weight: .heavy))
                            .foregroundColor(.white)

                        Text("Policy • Governance • Leadership")
                            .font(.system(size: 16, weight: .medium, design: .serif))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    .padding(.top, 40)

                    Spacer()

                    VStack(spacing: 22) {

                        NavigationLink {
                            IASJourneyView()
                        } label: {
                            DefenceExamCard(
                                title: "Indian Administrative Service",
                                short: "IAS",
                                description: "Administration, policy making and governance.",
                                icon: "building.columns.fill"
                            )
                        }

                        NavigationLink {
                            IPSJourneyView()
                        } label: {
                            DefenceExamCard(
                                title: "Indian Police Service",
                                short: "IPS",
                                description: "Law enforcement and internal security.",
                                icon: "shield.lefthalf.filled"
                            )
                        }

                        NavigationLink {
                            IFSJourneyView()
                        } label: {
                            DefenceExamCard(
                                title: "Indian Forest Service",
                                short: "IFS",
                                description: "Forest, wildlife and environmental protection.",
                                icon: "leaf.fill"
                            )
                        }
                    }

                    Spacer()
                }
                .padding()
            }
        }
    }
}

