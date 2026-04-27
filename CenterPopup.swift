import SwiftUI

struct CenterPopup: View {

    let title: String
    let description: String
    @Binding var showPopup: Bool

    @State private var appear = false

    var body: some View {
        ZStack {

            Color.black.opacity(0.4)
                .ignoresSafeArea()
                .onTapGesture {
                    close()
                }

            VStack(spacing: 0) {

                HStack {
                    Text(title)
                        .font(.system(size: 20, weight: .bold))

                    Spacer()

                    Button {
                        close()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 22))
                            .foregroundColor(.gray)
                    }
                }
                .padding()

                Divider()

                ScrollView {
                    Text(description)
                        .font(.system(size: 16))
                        .padding(20)
                        .multilineTextAlignment(.leading)
                }
            }
            .frame(
                width: UIScreen.main.bounds.width * 0.88,
                height: UIScreen.main.bounds.height * 0.6
            )
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
            )
            .shadow(radius: 20)
            .scaleEffect(appear ? 1 : 0.9)
            .opacity(appear ? 1 : 0)
            .onAppear {
                withAnimation(.spring()) {
                    appear = true
                }
            }
        }
    }

    private func close() {
        withAnimation {
            showPopup = false
        }
    }
}

