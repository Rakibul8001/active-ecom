import React, {Component, Fragment} from 'react';
import {Button, Card, Col, Container, Form, Row} from "react-bootstrap";
import validaton from '../../validation/validation';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import axios from 'axios';
import ApiURL from '../../api/ApiURL';
import { Redirect } from 'react-router';


class UserOnboard extends Component {

    constructor(){
        super();
        this.state={
            btn:"NEXT",
            mobileNo:"",
            redirectPage:false
        }

        this.mobileOnChange = this.mobileOnChange.bind(this);
        this.onNextButton = this.onNextButton.bind(this);
        this.onRedirect = this.onRedirect.bind(this);

    }

    mobileOnChange(event){
        let mobileNo = event.target.value;
        this.setState({mobileNo:mobileNo});
    }

    onNextButton=(event)=>{
        event.preventDefault();

        let mobile = this.state.mobileNo;
        let btn = document.getElementById('submitBtn');

        let otpForm = new FormData();
        otpForm.append('mobile',mobile);

        if(mobile.length == 0){
            toast.error("Mobile Number Required !");
        }
        else if(!(validaton.MobileRegx).test(mobile)){
            toast.error("Invalid Mobile Number");
        }
        else{

            btn.innerHTML = "Sending...";

            axios.post(ApiURL.CreateOtp, otpForm).then(response =>{
                
                if(response.status=== 200){
                    
                    btn.innerHTML = "Next";
                    toast.success("OTP has been sent successfully!")
                    //after success redirect verification page, so set redirect state true
                    this.setState({redirectPage:true})
                   
                    
                }
                else{
                    btn.innerHTML = "Next";
                    toast.error("Incorrect. Please try again!")
                }

            }).catch(error =>{
                btn.innerHTML = "Next";
                toast.error(error)
            });
        }
    }

    onRedirect(){
        if(this.state.redirectPage === true){
            return <Redirect to={"/otp-verification/"+this.state.mobileNo} />
        }

    }



    render() {
        return (
            <Fragment>
                <Container className="TopSection">
                    <Row className="p-2">
                        <Col className="shadow-sm bg-white mt-2" md={12} lg={12} sm={12} xs={12}>
                            <Row className="text-center ">
                                <Col className="d-flex justify-content-center" md={6} lg={6} sm={12} xs={12}>
                                    <Form className="onboardForm" id="onboardForm">
                                        <h4 className="section-title">USER SING IN</h4>
                                        <h6 className="section-sub-title">Please Enter Your Mobile No, And Go Next</h6>
                                        <input onChange={this.mobileOnChange} className="form-control m-2" type="text" placeholder="Mobile Number"/>
                                        <Button onClick={this.onNextButton} id="submitBtn" className="btn btn-block m-2 site-btn">Next</Button>
                                    </Form>
                                </Col>
                                <Col className="p-0 Desktop m-0" md={6} lg={6} sm={6} xs={6}>
                                    <img className="onboardBanner" src="Images/otppagebanner.png" />
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

                    {this.onRedirect()}
                </Container>

            </Fragment>
        );
    }
}

export default UserOnboard;