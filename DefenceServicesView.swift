import SwiftUI

struct DefenceServicesView: View {

    var body: some View {
        NavigationStack {   // ✅ REQUIRED

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
                        Text("Defence Services")
                            .font(.system(size: 36, weight: .heavy))
                            .foregroundColor(.white)

                        Text("Service before self")
                            .font(.system(size: 16, weight: .medium, design: .serif))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    .padding(.top, 40)

                    Spacer()

                    // CARDS
                    VStack(spacing: 22) {

                        NavigationLink {
                            ArmyJourneyView()
                        } label: {
                            DefenceExamCard(
                                title: "Indian Army",
                                short: "ARMY",
                                description: "Land-based military operations and national security.",
                                icon: "shield.fill"
                            )
                        }

                        NavigationLink {
                            NavyJourneyView()
                        } label: {
                            DefenceExamCard(
                                title: "Indian Navy",
                                short: "NAVY",
                                description: "Maritime defence and safeguarding India’s seas.",
                                icon: "sailboat.fill"
                            )
                        }

                        NavigationLink {
                            AirForceJourneyView()
                        } label: {
                            DefenceExamCard(
                                title: "Indian Air Force",
                                short: "IAF",
                                description: "Aerial warfare, air defence, and strategic operations.",
                                icon: "airplane"
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
struct DefenceExamCard: View {

    let title: String
    let short: String
    let description: String
    let icon: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {

            HStack {
                Text(short)
                    .font(.system(size: 24, weight: .heavy))
                    .foregroundColor(.white)

                Spacer()

                Image(systemName: icon)
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.white.opacity(0.8))
            }

            Text(title)
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(.white.opacity(0.9))

            Text(description)
                .font(.system(size: 14))
                .foregroundColor(.white.opacity(0.65))
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        colors: [
                            Color.black.opacity(0.85),
                            Color.gray.opacity(0.7)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.white.opacity(0.12), lineWidth: 1)
                )
                .shadow(color: .black.opacity(0.6), radius: 12, y: 8)
        )
        .contentShape(Rectangle()) // full card tappable
    }
}

