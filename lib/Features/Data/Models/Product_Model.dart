
import 'package:splash/Features/Data/Models/Product_Model.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final Brands brands;
  final String? brandName;
  final String? brandLogoUrl;
  final List<ProductVariation> productVariations;
  final List<ProductProperties> properties;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.brands,
    required this.brandName,
    required this.brandLogoUrl,
    required this.productVariations,
    required this.properties,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      brands: Brands.fromJson(json['Brands'] ?? {}),
      brandName: json['Brands']?['brand_name'] ?? '',
      brandLogoUrl: json['Brands']?['brand_logo_image_path'] ?? '',
      productVariations: (json['ProductVariations'] as List<dynamic>?)
          ?.map((x) => ProductVariation.fromJson(x))
          .toList() ?? [],
      properties: (json['properties'] as List<dynamic>?)
          ?.map((x) => ProductProperties.fromJson(x))
          .toList() ?? [],
    );
  }
}

//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       id: json['id'],
//       name: json['name'],
//       description: json['description'],
//       brands: Brands.fromJson(json['Brands']),
//       brandName: json['Brands']['brand_name'],
//       brandLogoUrl: json['Brands']['brand_logo_image_path'],
//       productVariations: List<ProductVariation>.from(json['ProductVariations'].map((x) => ProductVariation.fromJson(x))),
//       properties: List<ProductProperties>.from(json['properties'].map((x) => ProductProperties.fromJson(x))),
//     );
//   }
// }

class Brands {
  final int id;
  final String brandType;
  final String brandName;
  final String brandFacebookPageLink;
  final String brandInstagramPageLink;
  final String? brandWebsiteLink;
  final String brandMobileNumber;
  final String brandEmailAddress;
  final String? taxIdNumber;
  final String brandDescription;
  final String brandLogoImagePath;
  final int brandStatusId;
  final dynamic brandStoreAddressId;
  final int brandCategoryId;
  final dynamic deletedAt;
  final String createdAt;
  final String updatedAt;
  final int brandSellerId;
  final dynamic brandId;
  final dynamic slashContractPath;
  final int brandRating;
  final int daysLimitToReturn;
  final dynamic planId;

  Brands({
    required this.id,
    required this.brandType,
    required this.brandName,
    required this.brandFacebookPageLink,
    required this.brandInstagramPageLink,
    required this.brandWebsiteLink,
    required this.brandMobileNumber,
    required this.brandEmailAddress,
    required this.taxIdNumber,
    required this.brandDescription,
    required this.brandLogoImagePath,
    required this.brandStatusId,
    required this.brandStoreAddressId,
    required this.brandCategoryId,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.brandSellerId,
    required this.brandId,
    required this.slashContractPath,
    required this.brandRating,
    required this.daysLimitToReturn,
    required this.planId,
  });

  factory Brands.fromJson(Map<String, dynamic> json) {
    return Brands(
      id: json['id'],
      brandType: json['brand_type'],
      brandName: json['brand_name'],
      brandFacebookPageLink: json['brand_facebook_page_link'],
      brandInstagramPageLink: json['brand_instagram_page_link'],
      brandWebsiteLink: json['brand_website_link'],
      brandMobileNumber: json['brand_mobile_number'],
      brandEmailAddress: json['brand_email_address'],
      taxIdNumber: json['tax_id_number'],
      brandDescription: json['brand_description'],
      brandLogoImagePath: json['brand_logo_image_path'],
      brandStatusId: json['brand_status_id'],
      brandStoreAddressId: json['brand_store_address_id'],
      brandCategoryId: json['brand_category_id'],
      deletedAt: json['deletedAt'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      brandSellerId: json['brand_seller_id'],
      brandId: json['brand_id'],
      slashContractPath: json['slash_contract_path'],
      brandRating: json['brand_rating'],
      daysLimitToReturn: json['days_limit_to_return'],
      planId: json['planId'],
    );
  }
}

class ProductVariation {
  final int id;
  final int productId;
  final int price;
  final int quantity;
  final dynamic warehouseId;
  final bool isDefault;
  final dynamic deletedAt;
  final String createdAt;
  final String updatedAt;
  final int productVariationStatusId;
  final dynamic acceptedBy;
  final List<ProductVarientImage> productVarientImages;

  ProductVariation({
    required this.id,
    required this.productId,
    required this.price,
    required this.quantity,
    required this.warehouseId,
    required this.isDefault,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.productVariationStatusId,
    required this.acceptedBy,
    required this.productVarientImages,
  });

  factory ProductVariation.fromJson(Map<String, dynamic> json) {
    return ProductVariation(
      id: json['id'],
      productId: json['product_id'],
      price: json['price'],
      quantity: json['quantity'],
      warehouseId: json['warehouse_id'],
      isDefault: json['is_default'],
      deletedAt: json['deletedAt'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      productVariationStatusId: json['product_variation_status_id'],
      acceptedBy: json['accepted_by'],
      productVarientImages: List<ProductVarientImage>.from(json['ProductVarientImages'].map((x) => ProductVarientImage.fromJson(x))),
    );
  }
}

class ProductVarientImage {
  final int id;
  final String imagePath;
  final int productVarientId;
  final String createdAt;
  final String updatedAt;

  ProductVarientImage({
    required this.id,
    required this.imagePath,
    required this.productVarientId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductVarientImage.fromJson(Map<String, dynamic> json) {
    return ProductVarientImage(
      id: json['id'],
      imagePath: json['image_path'],
      productVarientId: json['product_varient_id'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

class ProductProperties {
  final int id;
  final String name;
  final String value;

  ProductProperties({
    required this.id,
    required this.name,
    required this.value,
  });

  factory ProductProperties.fromJson(Map<String, dynamic> json) {
    return ProductProperties(
      id: json['id'],
      name: json['name'],
      value: json['value'],
    );
  }
}
