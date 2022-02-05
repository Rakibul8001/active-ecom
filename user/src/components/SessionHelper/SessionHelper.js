class SessionHelper{
    //Footer session
    static SetSiteInfoFooter(JSONData){
        sessionStorage.setItem("SiteInfoFooter",JSON.stringify(JSONData));
    }
    static GetSiteInfoFooter(){
        return sessionStorage.getItem("SiteInfoFooter");
    }
    //About session
    static SetSiteInfoAbout(JSONData){
        sessionStorage.setItem("SiteInfoAbout",JSONData);
    }
    static GetSiteInfoAbout(){
        return sessionStorage.getItem("SiteInfoAbout");
    }
    //Policy session
    static SetPolicy(JSONData){
        sessionStorage.setItem("SiteInfoPolicy",JSONData);
    }
    static GetPolicy(){
        return sessionStorage.getItem("SiteInfoPolicy");
    }

    //Refund session
    static SetRefund(JSONData){
        sessionStorage.setItem("SiteInfoTerms",JSONData);
    }
    static GetRefun(){
        return sessionStorage.getItem("SiteInfoTerms");
    }

    //Purchase session
    static SetSiteInfoPurchase(JSONData){
        sessionStorage.setItem("SiteInfoPurchase",JSONData);
    }
    static GetSiteInfoPurchase(){
        return sessionStorage.getItem("SiteInfoPurchase");
    }

    //User Mobile number session
    static SetUserMobile(mobile){
        sessionStorage.setItem("UserMobile",mobile);
    }
    static GetUserMobile(){
        return sessionStorage.getItem("UserMobile");
    }
    //Session Clear for logout
    static RemoveUserMobile(){
        return sessionStorage.removeItem("UserMobile");
    }
}

export default SessionHelper;