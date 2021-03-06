import React, { Component, Fragment } from 'react';
import { Redirect } from "react-router";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import UserOnboard from "../components/common/UserOnboard";
import SessionHelper from '../components/SessionHelper/SessionHelper';

class UserOnboardPage extends Component {

    constructor(){
        super();
        this.state={
            redirectStatus:false
        }
    }

    PageRedirect=()=>{
        if(this.state.redirectStatus === true){
            return (
                <Redirect to="/"/>
            );
        }
    }

    componentDidMount() {
        window.scroll(0,0);
        if(SessionHelper.GetUserMobile() != null){
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

                <UserOnboard/>

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

export default UserOnboardPage;