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
}

export default ApiURL;