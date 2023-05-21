//
//  Created by Sash Zats on 5/21/23.
//

import Foundation

struct Transcriptions: Encodable {
    let file: Data
    let prompt: String?
    let temperature: Double
    let language: String
    let model: String
}
