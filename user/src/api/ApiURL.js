class ApiURL{
    static BaseURL = "http://127.0.0.1:8000/api/"
    static VisitorDetails = this.BaseURL+"SendVisitorDetails"
    static SendContactDetails = this.BaseURL+"SendContactDetails"
    static SendSiteInfo = this.BaseURL+"SendSiteInfo"
    static SendCategoryDetails = this.BaseURL+"SendCategoryDetails"
}

export default ApiURL;