class ProductsModel {
  bool success;
  Results results;
  String message;

  ProductsModel({this.success, this.results, this.message});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    results =
    json['results'] != null ? new Results.fromJson(json['results']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.results != null) {
      data['results'] = this.results.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Results {
  int currentPage;
  List<Data> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  String nextPageUrl;
  String path;
  int perPage;
  Null prevPageUrl;
  int to;
  int total;

  Results(
      {this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  Results.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  int id;
  String name;
  String addedBy;
  int userId;
  int categoryId;
  int subcategoryId;
  int subsubcategoryId;
  int brandId;
  String photos;
  String thumbnailImg;
  String featuredImg;
  String flashDealImg;
  String videoProvider;
  Null videoLink;
  String tags;
  String description;
  double unitPrice;
  double purchasePrice;
  String choiceOptions;
  String colors;
  String variations;
  int todaysDeal;
  int published;
  int featured;
  int currentStock;
  String unit;
  int discount;
  String discountType;
  int tax;
  String taxType;
  String shippingType;
  int shippingCost;
  int numOfSale;
  String metaTitle;
  String metaDescription;
  String metaImg;
  Null pdf;
  String slug;
  int rating;
  String createdAt;
  String updatedAt;

  Data(
      {this.id,
        this.name,
        this.addedBy,
        this.userId,
        this.categoryId,
        this.subcategoryId,
        this.subsubcategoryId,
        this.brandId,
        this.photos,
        this.thumbnailImg,
        this.featuredImg,
        this.flashDealImg,
        this.videoProvider,
        this.videoLink,
        this.tags,
        this.description,
        this.unitPrice,
        this.purchasePrice,
        this.choiceOptions,
        this.colors,
        this.variations,
        this.todaysDeal,
        this.published,
        this.featured,
        this.currentStock,
        this.unit,
        this.discount,
        this.discountType,
        this.tax,
        this.taxType,
        this.shippingType,
        this.shippingCost,
        this.numOfSale,
        this.metaTitle,
        this.metaDescription,
        this.metaImg,
        this.pdf,
        this.slug,
        this.rating,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    addedBy = json['added_by'];
    userId = json['user_id'];
    categoryId = json['category_id'];
    subcategoryId = json['subcategory_id'];
    subsubcategoryId = json['subsubcategory_id'];
    brandId = json['brand_id'];
    photos = json['photos'];
    thumbnailImg = json['thumbnail_img'];
    featuredImg = json['featured_img'];
    flashDealImg = json['flash_deal_img'];
    videoProvider = json['video_provider'];
    videoLink = json['video_link'];
    tags = json['tags'];
    description = json['description'];
    unitPrice = json['unit_price'];
    purchasePrice = json['purchase_price'];
    choiceOptions = json['choice_options'];
    colors = json['colors'];
    variations = json['variations'];
    todaysDeal = json['todays_deal'];
    published = json['published'];
    featured = json['featured'];
    currentStock = json['current_stock'];
    unit = json['unit'];
    discount = json['discount'];
    discountType = json['discount_type'];
    tax = json['tax'];
    taxType = json['tax_type'];
    shippingType = json['shipping_type'];
    shippingCost = json['shipping_cost'];
    numOfSale = json['num_of_sale'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaImg = json['meta_img'];
    pdf = json['pdf'];
    slug = json['slug'];
    rating = json['rating'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['added_by'] = this.addedBy;
    data['user_id'] = this.userId;
    data['category_id'] = this.categoryId;
    data['subcategory_id'] = this.subcategoryId;
    data['subsubcategory_id'] = this.subsubcategoryId;
    data['brand_id'] = this.brandId;
    data['photos'] = this.photos;
    data['thumbnail_img'] = this.thumbnailImg;
    data['featured_img'] = this.featuredImg;
    data['flash_deal_img'] = this.flashDealImg;
    data['video_provider'] = this.videoProvider;
    data['video_link'] = this.videoLink;
    data['tags'] = this.tags;
    data['description'] = this.description;
    data['unit_price'] = this.unitPrice;
    data['purchase_price'] = this.purchasePrice;
    data['choice_options'] = this.choiceOptions;
    data['colors'] = this.colors;
    data['variations'] = this.variations;
    data['todays_deal'] = this.todaysDeal;
    data['published'] = this.published;
    data['featured'] = this.featured;
    data['current_stock'] = this.currentStock;
    data['unit'] = this.unit;
    data['discount'] = this.discount;
    data['discount_type'] = this.discountType;
    data['tax'] = this.tax;
    data['tax_type'] = this.taxType;
    data['shipping_type'] = this.shippingType;
    data['shipping_cost'] = this.shippingCost;
    data['num_of_sale'] = this.numOfSale;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['meta_img'] = this.metaImg;
    data['pdf'] = this.pdf;
    data['slug'] = this.slug;
    data['rating'] = this.rating;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}