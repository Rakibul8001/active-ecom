import React, {Component,Fragment} from 'react';
import {Container,Col,Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import 'react-toastify/dist/ReactToastify.css';
import { ToastContainer, toast } from 'react-toastify';
import ReactHtmlParser, { processNodes, convertNodeToElement, htmlparser2 } from 'react-html-parser';
import ApiURL from '../../api/ApiURL';
import axios from 'axios';
import HtmlParser from 'react-html-parser';
import SessionHelper from '../SessionHelper/SessionHelper';

class FooterDesktop extends Component {
    constructor(){
        super();
        this.state={
            aboutCompany:"",
            officeAddress:"",
            facebookLink:"",
            twitterLink:"",
            instagramLink:"",
            deliveryNotice:"",
            androidLink:"",
            iosLink:"",
            loaderDiv:"",
            mainDiv:"d-none"
        }
    }

    componentDidMount(){
        // store data into sessionStorage
        let SiteInfoFooter = SessionHelper.GetSiteInfoFooter();

        if(SiteInfoFooter == null){
            //first time api call
            axios.get(ApiURL.SendSiteInfo).then(response=>{
                let StatusCode = response.status;
                if(StatusCode == 200){
                    let JSONData = (response.data)[0];
                    this.setState({
                        aboutCompany:JSONData['about_company'],
                        officeAddress:JSONData['address'],
                        facebookLink:JSONData['facebook_link'],
                        twitterLink:JSONData['twitter_link'],
                        instagramLink:JSONData['instagram_link'],
                        deliveryNotice:JSONData['delivery_notice'],
                        androidLink:JSONData['android_app_link'],
                        iosLink:JSONData['ios_app_link'],
                        loaderDiv:'d-none', 
                        mainDiv:''
                    });
                    SessionHelper.SetSiteInfoFooter(JSONData);
                }
                else{
                    toast.error("Something went wrong!");
                }
            }).catch(error=>{
                toast.error("Something went wrong!");
            });
        }
        else{
            let FooterDataJSON = JSON.parse(SiteInfoFooter);
            // data load from sessionStorage
            this.setState({
                aboutCompany:FooterDataJSON['about_company'],
                officeAddress:FooterDataJSON['address'],
                facebookLink:FooterDataJSON['facebook_link'],
                twitterLink:FooterDataJSON['twitter_link'],
                instagramLink:FooterDataJSON['instagram_link'],
                deliveryNotice:FooterDataJSON['delivery_notice'],
                androidLink:FooterDataJSON['android_app_link'],
                iosLink:FooterDataJSON['ios_app_link'],
                loaderDiv:'d-none', 
                mainDiv:''
            });
        }

    }

    render() {
        return (
                <div className="m-0 bg-white mt-5 pt-3 shadow-sm">
                    <div className={this.state.loaderDiv}>
                        <div className="ph-item">
                            <div className="ph-col-12">  
                                <div className="ph-row">
                                    <div className="ph-col-12"></div>
                                    <div className="ph-col-12"></div>
                                    <div className="ph-col-12"></div>
                                    <div className="ph-col-12"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className={this.state.mainDiv}>
                        <Container>
                            <Row className="px-0 my-5">
                                <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                    <h5 className="footer-menu-title">ABOUT COMPANY</h5>
                                    <p>{ ReactHtmlParser(this.state.aboutCompany) }</p>
                                    <h5 className="footer-menu-title">SOCIAL LINK</h5>
                                    <a target='_blank' href={this.state.facebookLink}><i className="fab m-1 h4 fa-facebook"></i></a>
                                    <a target='_blank' href={this.state.instagramLink}><i className="fab m-1 h4 fa-instagram"></i></a>
                                    <a target='_blank' href={this.state.twitterLink}><i className="fab m-1 h4 fa-twitter"></i></a>
                                </Col>
                                <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                    <h5 className="footer-menu-title">THE COMPANY</h5>
                                    <Link to="/about" className="footer-link">About Us</Link><br/>
                                    <Link to="/contact" className="footer-link">Contact Us</Link><br/>

                                    <h5 className="footer-menu-title mt-3">OFFICE ADDRESS</h5>
                                    <p>{ ReactHtmlParser(this.state.officeAddress) }</p>
                                </Col>
                                <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                    <h5 className="footer-menu-title">MORE INFO</h5>
                                    <Link to="/purchase" className="footer-link">How To Purchase</Link><br/>
                                    <Link to="/policy" className="footer-link">Privacy Policy</Link><br/>
                                    <Link  to="/refund" className="footer-link">Refund Policy</Link><br/>
                                </Col>
                                <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                    <h5 className="footer-menu-title">DOWNLOAD APP</h5>
                                    <a target='_blank' href={this.state.iosLink}><img className="" src="Images/apple.png"/></a><br/>
                                    <a target='_blank' href={this.state.androidLink}><img className="mt-2" src="Images/playstore.png"/></a>
                                    <p className="mt-3">Change Language</p>
                                    <p className="mt-1" id="google_translate_element"></p>
                                </Col>
                            </Row>

                        </Container>
                        <Container fluid={true} className=" m-0 pt-3 pb-1 bg-dark">
                            <Container className="">
                                <Row className="px-0">
                                    <h6 className="text-white">WE DELIVER IN</h6>
                                    <p className="footer-text text-white">{ ReactHtmlParser(this.state.deliveryNotice) }</p>
                                </Row>
                            </Container>

                        </Container>
                    </div>
                </div>

        );
    }
}

export default FooterDesktop;