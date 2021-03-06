class ApiURL{
    static BaseURL = "http://127.0.0.1:8000/api/"
    static VisitorDetails = this.BaseURL+"SendVisitorDetails"
    static SendContactDetails = this.BaseURL+"SendContactDetails"
    static SendSiteInfo = this.BaseURL+"SendSiteInfo"
    static SendCategoryDetails = this.BaseURL+"SendCategoryDetails"

    static productListByRemark(remark){
        return this.BaseURL+"productListByRemark/"+remark
    }
    static productListBySubcategory(Category,Subcategory){
        return this.BaseURL+"productListBySubcategory/"+Category+"/"+Subcategory
    }
    static productListByCategory(Category){
        return this.BaseURL+"productListByCategory/"+Category
    }

    static  SendSliderInfo=this.BaseURL+"SendSliderInfo";

    static ProductDetails(ProductCode){
        return this.BaseURL+"ProductDetails/"+ProductCode
    }

    static  NotificationHistory=this.BaseURL+"NotificationHistory";

    //search
    static productListBySearch(SearchKey){
        return this.BaseURL+"productListBySearch/"+SearchKey
    }
    //send otp
    static CreateOtp = this.BaseURL+"CreateOtp";
    //otp verification
    static otpVerification = this.BaseURL+"otp-verification";
    //Similar product by subcategory
    static similarProducts(subcategory){
        return this.BaseURL+"similarProducts/"+subcategory;
    }
    //ReviewList
    static ReviewList(code){
        return this.BaseURL+"review-list/"+code;
    }

    static postReview = this.BaseURL+"review-post";
    //addToCart
    static addToCartUrl = this.BaseURL+"addToCart";
    //Cart Count
    static CartCount(mobile){
        return this.BaseURL+"cartcount/"+mobile;
    }
    static CartList(mobile){
        return this.BaseURL+"carts/"+mobile;
    }
    static removeCartItem(id){
        return this.BaseURL+"cart-remove/"+id;
    }

    static CartItemMinus(id,quantity,price){
        return this.BaseURL+"CartItemMinus/"+id+"/"+quantity+"/"+price;
    }

    static CartItemPlus(id,quantity,price){
        return this.BaseURL+"CartItemPlus/"+id+"/"+quantity+"/"+price;
    }

    //Add to favourite
    static AddToFavourite(code,mobile){
        return this.BaseURL+"add-to-favourite/"+code+"/"+mobile;
    }
    static FavList(mobile){
        return this.BaseURL+"favourite-list/"+mobile;
    }
    static removeFavItem(code,mobile){
        return this.BaseURL+"remove-fav/"+code+"/"+mobile;
    }
    //Favourite Item Count
    static FavCount(mobile){
        return this.BaseURL+"favourite-count/"+mobile;
    }
    //order
    static  CartOrder=this.BaseURL+"CartOrder";

    static OrderByUser(mobile){
        return this.BaseURL+"orderByUser/"+mobile;
    }
}

export default ApiURL;