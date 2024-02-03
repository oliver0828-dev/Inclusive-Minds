
import SwiftUI

struct SchoolViewFramework: View {
    var framework: SchoolList
    var body: some View {
        VStack(spacing: 0) {
            Image(framework.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: 300)
                .clipped()
            
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(framework.title)
                            .font(.title)
                        Text(framework.caption)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    Image(systemName: framework.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                }
                .padding([.horizontal, .top])
                
                Divider()
                
                ScrollView {
                    Text(framework.description)
                        .padding()
                }
            }
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    SchoolViewFramework(framework: schoolList.schoolData[0])
}
