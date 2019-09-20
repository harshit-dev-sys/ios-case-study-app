//
//  ProductResponse.swift
//  iOSCaseStudyApp


import UIKit

struct ProductResponse: Codable {
    let variationName: String?
    let banner: String?
    let subheader: String?
    let slots: [Slot]?
    
    enum CodingKeys: String, CodingKey {
        case variationName = "variation_name"
        case banner, subheader, slots
    }
    
    struct Slot: Codable {
        let saleText: String?
        let rating: String?
        let currency: String?
        let sku, productHeading, name: String?
        let brandURL: String?
        let inventory: String?
        let imageURL: String?
        let price, appExclusive: String?
        let publishTime: String?
        let slotDescription, brand, variant, inStock: String?
        let underSale: String?
        let categories: [String]?
        let productSlug, newArrival, productID: String?
        let url: String?
        let bestseller, dyDisplayPrice: String?
        let currencySymbol: String?
        let groupID: String?
        let crossedPrice: String?
        
        enum CodingKeys: String, CodingKey {
            case saleText = "sale_text"
            case rating, currency, sku
            case productHeading = "product_heading"
            case name
            case brandURL = "brand_url"
            case inventory
            case imageURL = "image_url"
            case price
            case appExclusive = "app_exclusive"
            case publishTime = "publish_time"
            case slotDescription = "description"
            case brand, variant
            case inStock = "in_stock"
            case underSale = "under_sale"
            case categories
            case productSlug = "product_slug"
            case newArrival = "new_arrival"
            case productID = "product_id"
            case url, bestseller
            case dyDisplayPrice = "dy_display_price"
            case currencySymbol = "currency_symbol"
            case groupID = "group_id"
            case crossedPrice = "crossed_price"
        }
    }
}
