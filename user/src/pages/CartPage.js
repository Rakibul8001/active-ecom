import React, {Component,Fragment} from 'react';
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import CartList from "../components/Cart/CartList";
import { Redirect } from 'react-router';
import SessionHelper from '../components/SessionHelper/SessionHelper';

class CartPage extends Component {


    constructor(){
        super();
        this.state={
            redirectStatus:false
        }
    }

    PageRedirect=()=>{
        if(this.state.redirectStatus === true){
            return (
                <Redirect to="/onboard"/>
            );
        }
    }

    componentDidMount() {
        window.scroll(0,0);
        if(SessionHelper.GetUserMobile() === null){
            this.setState({redirectStatus:true});
        }
    }

    render() {
        return (
            <Fragment>
                <div className="Desktop">
                    <NavMenuDesktop/>
                </div>
                <div className="Mobile">
                    <NavMenuMobile/>
                </div>

                <CartList/>

                <div className="Desktop">
                    <FooterDesktop/>
                </div>
                <div className="Mobile">
                    <FooterMobile/>
                </div>

                {this.PageRedirect()}
            </Fragment>
        );
    }
}

export default CartPage;