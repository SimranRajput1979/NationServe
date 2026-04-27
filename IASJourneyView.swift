import SwiftUI

struct IASJourneyView: View {

    @State private var selectedStep: CivilStep?
    @State private var showPopup = false

    var body: some View {
        ZStack {

            LinearGradient(
                colors: [.white, .gray.opacity(0.2)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack {
                Text("IAS Journey")
                    .font(.system(size: 26, weight: .bold))
                    .padding(.top, 20)

                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(CivilStep.iasSteps) { step in
                            StepCard(title: step.title) {
                                selectedStep = step
                                showPopup = true
                            }
                        }
                    }
                    .padding()
                }
            }

            if showPopup, let step = selectedStep {
                CenterPopup(
                    title: step.title,
                    description: step.description,
                    showPopup: $showPopup
                )
            }
        }
    }
}

