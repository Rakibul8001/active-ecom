import axios from 'axios';
import React, {Component, Fragment} from 'react';
import {Button, Col, Container, Form, Row} from "react-bootstrap";
import ApiURL from '../../api/ApiURL';
import validaton from '../../validation/validation';

import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

class Contact extends Component {

    constructor(){
        super()
        this.state={
            name:"",
            mobile:"",
            message:""
        }
    }

    nameOnChange=(event)=>{
        let name = event.target.value;
        this.setState({name:name})
    }
    mobileOnChange=(event)=>{
        let mobile = event.target.value;
        this.setState({mobile:mobile})
    }
    messageOnChange=(event)=>{
        let message = event.target.value;
        this.setState({message:message})
    }

    onFormSubmit=(event)=>{
        event.preventDefault();

        let name= this.state.name;
        let mobile = this.state.mobile;
        let message = this.state.message;

        let sendBtn = document.getElementById("sendBtn");
        let contactForm = document.getElementById("contactForm");

        if(name.length == 0){
            toast.error("Name Required !");
        }
        else if(!(validaton.NameRegx).test(name)){
            
            toast.error('Invalid Name!');
        }
        else if(mobile.length == 0){
            toast.error("Mobile Number Required !");
        }
        else if(!(validaton.MobileRegx).test(mobile)){
            toast.error("Invalid Mobile Number");
        }
        else if(message.length == 0){
            toast.error("Message Required !");
        }
        else if(message.length == 0){
            toast.error("Message Required !");
        }
        else{
            sendBtn.innerHTML = "sending...";

            let myFormData = new FormData();
            myFormData.append("name",name)
            myFormData.append("mobile",mobile)
            myFormData.append("message",message)

            axios.post(ApiURL.SendContactDetails, myFormData).then(function(response){
                if(response.status == 200 && response.data == 1){
                    toast.success("Success!");
                    sendBtn.innerHTML = "SEND";
                    contactForm.reset();
                }
                else{
                    toast.error("Incorrect. Please try again!")
                    sendBtn.innerHTML = "SEND";
                }
            }).catch(function(error){
                toast.error(error)
                sendBtn.innerHTML = "SEND";
            })
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
                                    <Form id="contactForm" onSubmit={this.onFormSubmit} className=" onboardForm">
                                        <h4 className="section-title">CONTACT WITH US</h4>
                                        <h6 className="section-sub-title">Please Enter Your Mobile No, And Go Next</h6>
                                        <input onChange={this.nameOnChange} className="form-control m-2" type="text" placeholder="Your Name"/>
                                        <input onChange={this.mobileOnChange} className="form-control m-2" type="text" placeholder="Mobile Number"/>
                                        <input onChange={this.messageOnChange} className="form-control m-2" type="text" placeholder="Message"/>
                                        <Button id="sendBtn" type="submit" className="btn btn-block m-2 site-btn">SEND</Button>
                                    </Form>
                                </Col>
                                <Col className="p-0 Desktop m-0" md={6} lg={6} sm={6} xs={6}>
                                    <iframe className="GoogleMap" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.9009669046704!2d90.38828391450218!3d23.750910694674705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8bcd681372b%3A0x5c2b8755e4327004!2sBashundhara%20City%20Shopping%20Complex!5e0!3m2!1sen!2sbd!4v1601135282389!5m2!1sen!2sbd" ></iframe>
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

                </Container>
            </Fragment>
        );
    }
}

export default Contact;