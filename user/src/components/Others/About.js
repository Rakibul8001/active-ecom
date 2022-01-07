import axios from 'axios';
import React, {Component, Fragment} from 'react';
import {Card, Col, Container, Row} from "react-bootstrap";
import 'react-toastify/dist/ReactToastify.css';
import { ToastContainer, toast } from 'react-toastify';
import ReactHtmlParser, { processNodes, convertNodeToElement, htmlparser2 } from 'react-html-parser';
import ApiURL from '../../api/ApiURL';
class About extends Component {

    constructor(){
        super();
        this.state={
            about:"",
            loaderDiv:"",
            mainDiv:"d-none"
        }
    }

    componentDidMount(){
        // store data into sessionStorage
        let SiteInfoAbout = sessionStorage.getItem("SiteInfoAbout");

        if(SiteInfoAbout == null){
            //first time api call
            axios.get(ApiURL.SendSiteInfo).then(response=>{
                let StatusCode = response.status;
                if(StatusCode == 200){
                    let JSONData = (response.data)[0]['about'];
                    this.setState({about:JSONData, loaderDiv:'d-none', mainDiv:''});
                    sessionStorage.setItem("SiteInfoAbout",JSONData);
                }
                else{
                    toast.error("Something went wrong!");
                }
            }).catch(error=>{
                toast.error("Something went wrong!");
            });
        }
        else{
            // data load from sessionStorage
            this.setState({about:SiteInfoAbout,loaderDiv:'d-none', mainDiv:''});
        }

    }

    render() {
        return (
            <Fragment>
                <Container className="TopSection">
                    <Row>
                        <Col className="mt-2" md={12} lg={12} sm={12} xs={12}>
                            <Card className={this.state.loaderDiv}>
                                <Card.Body>
                                <div className="ph-item">
                                    <div className="ph-col-12">
                                        <div className="ph-picture"></div>
                                        <div className="ph-row">
                                            <div className="ph-col-6 big"></div>
                                            <div className="ph-col-4 empty big"></div>
                                            <div className="ph-col-2 big"></div>
                                            <div className="ph-col-4"></div>
                                            <div className="ph-col-8 empty"></div>
                                            <div className="ph-col-6"></div>
                                            <div className="ph-col-6 empty"></div>
                                            <div className="ph-col-12"></div>
                                        </div>
                                    </div>
                                </div>
                                </Card.Body>
                            </Card>
                            <Card className={this.state.mainDiv}>
                                <Card.Body>
                                { ReactHtmlParser(this.state.about) }
                                </Card.Body>
                            </Card>
                        </Col>
                    </Row>
                    <ToastContainer
                        position="bottom-right"
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

export default About;