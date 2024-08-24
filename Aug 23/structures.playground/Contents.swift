import UIKit

var greeting = "Hello, playground"

//{
//  "status": "success",
//  "data": {
//    "user": {
//      "id": "123456",
//      "name": {
//        "first": "John",
//        "middle": "A.",
//        "last": "Doe"
//      },
//      "contacts": [
//        {
//          "type": "email",
//          "value": "john.doe@example.com"
//        },
//        {
//          "type": "phone",
//          "value": "+1-555-1234"
//        }
//      ],
//      "address": {
//        "street": "123 Main St",
//        "city": "Anytown",
//        "state": "CA",
//        "postalCode": "90210",
//        "country": "USA"
//      },
//      "roles": [
//        {
//          "role": "admin",
//          "permissions": ["read", "write", "delete"]
//        },
//        {
//          "role": "user",
//          "permissions": ["read"]
//        }
//      ],
//      "profile": {
//        "avatarUrl": "https://example.com/avatar.jpg",
//        "bio": "Software engineer with 10 years of experience in mobile and web development.",
//        "social": {
//          "twitter": "@johndoe",
//          "linkedin": "https://linkedin.com/in/johndoe"
//        }
//      }
//    },
//    "settings": {
//      "theme": "dark",
//      "notifications": {
//        "email": true,
//        "sms": false
//      }
//    },
//    "metrics": {
//      "posts": 150,
//      "followers": 300,
//      "following": 180,
//      "likes": {
//        "received": 2500,
//        "given": 1750
//      }
//    }
//  },
//  "meta": {
//    "timestamp": "2024-08-23T10:00:00Z",
//    "requestId": "abc123xyz"
//  }
//}

struct Notifications {
    let email: Bool
    let sms: Bool
}

struct Settings {
    let theme: String?
    let notifications: Notifications?
}

struct Social {
    let twitter: String?
    let linkedin: String?
}

struct Profile {
    let avatarUrl: String?
    let bio: String?
    let social: Social?
}

struct Role {
    let role: String
    let permissions: [String]
}

struct Address {
    let street: String
    let city: String
    let state: String
    let postalCode: String
    let country: String
}

struct Contact {
    let type: String
    let value: String
}

struct Name {
    let first: String
    let middle: String?
    let last : String
}

struct User {
    
    let id: String
    let name: Name?
    let Contacts: [Contact]?
    let address: Address?
    let roles: [Role]?
    let profiles: Profile?
    
}

struct Likes {
    let received: Int?
    let given: Int?
}

struct Metrics {
    let posts: Int?
    let followers: Int?
    let following: Int?
    let likes: Likes?
}

struct MetaData {
    let timestamp: String?
    let requestId: String?
}

struct UserData {
    let user : User?
    let settings: Settings?
    let metrics: Metrics?
    
}



struct User_Api_Response {
    let status: String
    let data: UserData?
    let meta: MetaData?
}
