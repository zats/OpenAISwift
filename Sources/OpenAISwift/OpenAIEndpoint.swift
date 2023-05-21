//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

enum Endpoint {
    case completions
    case edits
    case chat
    case images
    case embeddings
    case moderations
    case transcriptions
}

enum Encoding {
    case json
    case multipartForm
}

extension Endpoint {
    var path: String {
        switch self {
            case .completions:
                return "/v1/completions"
            case .edits:
                return "/v1/edits"
            case .chat:
                return "/v1/chat/completions"
            case .images:
                return "/v1/images/generations"
            case .embeddings:
                return "/v1/embeddings"
            case .moderations:
                return "/v1/moderations"
            case .transcriptions:
                return "/v1/audio/transcriptions"
        }
    }
    
    var encoding: Encoding {
        switch self {
        case .completions, .edits, .chat, .images, .embeddings, .moderations:
            return .json
        case .transcriptions:
            return .multipartForm
        }
    }
    
    var method: String {
        switch self {
            case .completions, .edits, .chat, .images, .embeddings, .moderations, .transcriptions:
            return "POST"
        }
    }
    
    func baseURL() -> String {
        switch self {
            case .completions, .edits, .chat, .images, .embeddings, .moderations, .transcriptions:
            return "https://api.openai.com"
        }
    }
}
