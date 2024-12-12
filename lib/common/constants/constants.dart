class Constants {
  static const baseUrl = 'https://api.repid.uz';
  static const version = '/api/v1';
  static const apiLogin = '/accounts/user/login/';
  static const apiFoodCategory = '/common/category/list/?page=';
  static const apiFoodList = '/common/food/list/';
  static const apiFoodsCategoryId = '/common/category/';
  static const apiFoodsId = '/common/food/';
  static const apiTable = '/common/table/list/';
  static const apiTableId = '/common/table/choose/';
  static const apiTableChoose = '/common/table/choose/';
  static const apiOrder = '/common/cart/';
  static const apiSale = '/common/cart-item/create/';
  static const apiOrderCreate = '/common/order/create/';
  static const apiCartDelete = '/common/cart-item/';
  static const apiProcess = '/common/order/list/in-process/';
  static const apiProcessNumber = '/common/order/list/in-process/?table_number=';
  static const apiOrderDone = '/common/order/change/status/';
  static const apiDoneList = '/common/order/list/is-done/';
  static const apiAccount = '/accounts/user/profile/';
  static const apiLogOut = '/accounts/user/logout/';
  static const apiBasketCategory = '/product/product-category/list/';
  static const apiOrderUpdate = '/common/cart-item/';
  static const apiFoodSearch = '/common/food/list/?search=';
  static const apiFinalDay = '/common/finish-day/';
  static const apiConfirmList = '/common/order/list/is-not-confirm/';
  static const apiConfirm = '/common/order/confirm/';
  static const apiConfirmAll = '/common/order/list/is-confirm/';
  static const apiTableCr = '/common/create/cart/';
  static const apiFinishCashier = '/common/cashier-finish-day/';


  //product
  static const apiProductList="/product/product/list/";
  static const apiProductId="/product/product-category/";
  static const apiProductAdd="/product/product/create/";
  static const apiProductInfo="/product/product/";


  // STOREKEEPER
  static const apiProductCategory = '/product/product-category/list/';
  static const apiProductCategoryId = '/product/product-category/';
  static const apiProductsGet = '/product/product/list/';
  static const apiProductsSearch = '/product/product/list/?search=';

// Foydalanuvchi user type
  static const omborchi = "omborchi";
  static const ofitsant = "ofitsant";
  static const kassir = "kassir";
}
