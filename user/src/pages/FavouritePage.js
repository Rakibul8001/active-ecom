import React, {Component, Fragment} from 'react';
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import Policy from "../components/Others/Policy";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import Favourite from "../components/Favourite/Favourite";
import SessionHelper from '../components/SessionHelper/SessionHelper';
import { Redirect } from 'react-router';

class FavouritePage extends Component {

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

                <Favourite/>

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

export default FavouritePage;