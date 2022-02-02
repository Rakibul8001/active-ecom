import React, { Component, Fragment } from 'react';
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import axios from 'axios';
import ApiURL from '../api/ApiURL';
import ProductListLoader from '../components/placeholder/ProductListLoader';
import SearchList from '../components/ProductDetails/SearchList';

export default class SearchPage extends Component {

  constructor({match}){
    super();
    this.state={
      SearchKey:match.params.SearchKey,
      ProductData:[],
      isLoading:"",
      MainDiv:"d-none"
    }
}


componentDidMount() {
    window.scroll(0,0)

    axios.get(ApiURL.productListBySearch(this.state.SearchKey)).then(response =>{
        this.setState({ProductData:response.data, isLoading:"d-none", MainDiv:""});
    }).catch(error=>{

    });
}

  render() {
    return <Fragment>
    <div className="Desktop">
        <NavMenuDesktop/>
    </div>
    <div className="Mobile">
        <NavMenuMobile/>
    </div>

     {/* placeholder Loader */}
     <ProductListLoader isLoading={this.state.isLoading} />
    {/* Main div */}
    <div className={this.state.MainDiv}>
      <SearchList SearchKey={this.state.SearchKey} ProductData={this.state.ProductData} />
    </div>

    <div className="Desktop">
        <FooterDesktop/>
    </div>
    <div className="Mobile">
        <FooterMobile/>
    </div>

  </Fragment>
  }
}
