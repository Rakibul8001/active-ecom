import React, { Component, Fragment } from 'react';
// import {Route, Switch} from "react-router";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import AboutPage from "../pages/AboutPage";
import CartPage from "../pages/CartPage";
import ContactPage from "../pages/ContactPage";
import FavouritePage from "../pages/FavouritePage";
import HomePage from "../pages/HomePage";
import NotificationPage from "../pages/NotificationPage";
import OrderListPage from '../pages/OrderListPage';
import OtpVerificationPage from '../pages/OtpVerificationPage';
import PolicyPage from "../pages/PolicyPage";
import ProductByCategory from "../pages/ProductByCategory";
import ProductBySubcategory from "../pages/ProductBySubcategory";
import ProductDetailsPage from "../pages/ProductDetailsPage";
import PurchasePage from "../pages/PurchasePage";
import RefundPage from "../pages/RefundPage";
import SearchPage from "../pages/SearchPage";
import UserOnboardPage from "../pages/UserOnboardPage";


class AppRoute extends Component {
    render() {
        return (
            <Fragment>
                <Router>
                    <Switch>
                        <Route exact path="/" render={(props)=> <HomePage {...props} key={Date.now()}/>}/>
                        <Route exact path="/onboard"  render={(props)=> <UserOnboardPage {...props} key={Date.now()}/>}/>
                        <Route exact path="/contact"  render={(props)=> <ContactPage {...props} key={Date.now()}/>} />
                        <Route exact path="/purchase"  render={(props)=> <PurchasePage {...props} key={Date.now()}/>}/>
                        <Route exact path="/policy"  render={(props)=> <PolicyPage {...props} key={Date.now()}/>}/>
                        <Route exact path="/refund"  render={(props)=> <RefundPage {...props} key={Date.now()}/>}/>
                        <Route exact path="/about"  render={(props)=> <AboutPage {...props} key={Date.now()}/>} />
                        <Route exact path="/productDetails/:code" render={(props)=> <ProductDetailsPage {...props} key={Date.now()}/>} />
                        <Route exact path="/notification"  render={(props)=> <NotificationPage {...props} key={Date.now()}/>} />
                        <Route exact path="/favourite"  render={(props)=> <FavouritePage {...props} key={Date.now()}/>} />
                        <Route exact path="/cart"  render={(props)=> <CartPage {...props} key={Date.now()}/>} />
                        <Route exact path="/ProductByCategory/:Category"  render={(props)=> <ProductByCategory {...props} key={Date.now()}/>} />
                        <Route exact path="/ProductBySubcategory/:Category/:SubCategory"  render={(props)=> <ProductBySubcategory {...props} key={Date.now()}/>} />
                        <Route exact path="/productListBySearch/:SearchKey"  render={(props)=> <SearchPage {...props} key={Date.now()}/>} />
                        <Route exact path="/otp-verification/:mobile"  render={(props)=> <OtpVerificationPage {...props} key={Date.now()}/>} />
                        <Route exact path="/order-list" render={(props)=> <OrderListPage {...props} key={Date.now()} /> }/>
                    </Switch>
                </Router>
            </Fragment>
        );
    }
}

export default AppRoute;