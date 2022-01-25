import React, {Component, Fragment} from 'react';
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import axios from 'axios';
import ApiURL from '../api/ApiURL';
import ProductListLoader from "../components/placeholder/ProductListLoader";
import ListBySubcategory from '../components/ProductDetails/ListBySubcategory';

export default class ProductBySubcategory extends Component {
  constructor({match}){
    super();
    this.state={
        Category:match.params.Category,
        SubCategory:match.params.SubCategory,
        ProductData:[],
        isLoading:"",
        MainDiv:"d-none"
    }
}


componentDidMount() {
    window.scroll(0,0)

    axios.get(ApiURL.productListBySubcategory(this.state.Category, this.state.SubCategory)).then(response =>{
        this.setState({ProductData:response.data, isLoading:'d-none', MainDiv:""});
    }).catch(error=>{

    });
}

render() {
    if(this.state.MainDiv == "d-none"){
        return <Fragment>
        <div className="Desktop">
            <NavMenuDesktop/>
        </div>
        <div className="Mobile">
            <NavMenuMobile/>
        </div>

        <ProductListLoader isLoading={this.state.isLoading} />

        <div className="Desktop">
            <FooterDesktop/>
        </div>
        <div className="Mobile">
            <FooterMobile/>
        </div>

    </Fragment>
    }
    else{
        return <Fragment>
          <div className="Desktop">
              <NavMenuDesktop/>
          </div>
          <div className="Mobile">
              <NavMenuMobile/>
          </div>

          <ListBySubcategory Category={this.state.Category} SubCategory={this.state.SubCategory} ProductData={this.state.ProductData} />

          <div className="Desktop">
              <FooterDesktop/>
          </div>
          <div className="Mobile">
              <FooterMobile/>
          </div>

      </Fragment>
    }
  }
}
