import React, {Component, Fragment} from 'react';
import {Button, Card, Col, Container, Form, Row} from "react-bootstrap";
import validaton from '../../validation/validation';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import axios from 'axios';
import ApiURL from '../../api/ApiURL';
import { Redirect } from 'react-router';
import SessionHelper from '../SessionHelper/SessionHelper';

export default class OtpVerification extends Component {

  constructor(){
    super();
    this.state={
      otp:"",
      redirect:false
    }

    this.otpOnChange = this.otpOnChange.bind(this);
    this.onNextButton = this.onNextButton.bind(this);
    this.onRedirect = this.onRedirect.bind(this);
  }

  otpOnChange=(event)=>{
    let otpVal = event.target.value;
    this.setState({otp:otpVal});
  }

  onNextButton=(event)=>{

    let otpValue = this.state.otp;
    let mobile = this.props.mobile;

    let formData = new FormData();
    formData.append("otp",otpValue);
    formData.append("mobile",mobile);

    if(otpValue.length != 6){
      toast.error("Invalid OTP Number");
    }
    else{
      
      axios.post(ApiURL.otpVerification, formData).then(response =>{

        if(response.status == 200 && response.data == 1){
          toast.success("OTP Verification Successful");
          //set mobile on session
          SessionHelper.SetUserMobile(mobile);
          this.setState({redirect:true});
        }
        else if(response.status == 200 && response.data == 0){
          toast.error("Invalid OTP, Try Again Valid OTP");
        }
        else{
          toast.error("Request Failed! Try Again");
        }

      }).catch(error =>{
        toast.error(error);
      });

    }

  }

  onRedirect(){
    if(this.state.redirect === true){
      return <Redirect to="/" />
    }
  }

  componentDidMount(){
    // alert(this.props.mobile);
  }

  render() {
    return (
      <Fragment>
        <Container className="TopSection">
            <Row className="p-2">
                <Col className="shadow-sm bg-white mt-2" md={12} lg={12} sm={12} xs={12}>
                    <Row className="text-center ">
                        <Col className="d-flex justify-content-center" md={6} lg={6} sm={12} xs={12}>
                            <Form className="onboardForm" id="otpVerifyForm">
                                <h4 className="section-title">USER SING IN</h4>
                                <h6 className="section-sub-title">Please Enter Your Mobile No, And Go Next</h6>
                                <input onChange={this.otpOnChange} className="form-control m-2" type="text" placeholder="xxxxxx"/>
                                <Button onClick={this.onNextButton} id="submitBtn" className="btn btn-block m-2 site-btn">Login</Button>
                            </Form>
                        </Col>
                        <Col className="p-0 Desktop m-0" md={6} lg={6} sm={6} xs={6}>
                            <img className="onboardBanner" src="Images/otppagebanner.png"/>
                        </Col>
                    </Row>
                </Col>
            </Row>

            <ToastContainer
                position="top-right"
                autoClose={5000}
                hideProgressBar={false}
                newestOnTop={false}
                closeOnClick
                rtl={false}
                pauseOnFocusLoss
                draggable
                pauseOnHover
            />

            {/* Redirect function call */}
            {this.onRedirect()}

        </Container>
      </Fragment>
    );
  }
}
