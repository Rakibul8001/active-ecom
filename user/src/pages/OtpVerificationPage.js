import React, {Component, Fragment} from 'react';
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";
import OtpVerification from "../components/common/OtpVerification";

export default class OtpVerificationPage extends Component {

  constructor({match}){
    super();
    this.state={
        mobile:match.params.mobile,
    }
  }


  componentDidMount() {
    window.scroll(0,0)

  }
  render() {
    return  (
      <Fragment>
          <div className="Desktop">
              <NavMenuDesktop/>
          </div>
          <div className="Mobile">
              <NavMenuMobile/>
          </div>

          <OtpVerification  mobile={this.state.mobile}/>

          <div className="Desktop">
              <FooterDesktop/>
          </div>
          <div className="Mobile">
              <FooterMobile/>
          </div>

      </Fragment>
    );
  }
}
