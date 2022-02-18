import React, {Component,Fragment} from 'react';
import  {Container,Nav,Navbar, Row, Col, Button, InputGroup, Dropdown} from "react-bootstrap";
import {Link} from "react-router-dom";
import {Redirect} from "react-router";
import SessionHelper from '../SessionHelper/SessionHelper';
import axios from 'axios';
import ApiURL from '../../api/ApiURL';

class NavMenuDesktop extends Component {

    constructor(){
        super();
        this.state={
            SearchKey:"",
            SearchRedirectStatus:false,
            HomeRedirectStatus:false,
            CartCount:0,

        }
        //bind functions, if I use es6 function no need bind, as like onLogout function
        this.searchOnChange = this.searchOnChange.bind(this);
        this.searchOnClick = this.searchOnClick.bind(this);
        this.searchRedirect = this.searchRedirect.bind(this);
    }

    //Cart Count
    componentDidMount(){
        axios.get(ApiURL.CartCount(SessionHelper.GetUserMobile())).then(res=>{
            this.setState({CartCount:res.data});

        }).catch(error=>{

        });
    }

    //searchOnChange fun
    searchOnChange(e){
        let searchValue = e.target.value;
        this.setState({SearchKey:searchValue});
    }
    //onclick
    searchOnClick(){
        if(this.state.SearchKey.length >=2){
            this.setState({SearchRedirectStatus:true})
        }
    }
    //searchRedirect method
    searchRedirect(){
        if(this.state.SearchRedirectStatus == true){
            return <Redirect to={"/productListBySearch/"+this.state.SearchKey} />
        }
    }
    //Session Clear and logout
    onLogout=()=>{
        SessionHelper.RemoveUserMobile();
        this.setState({HomeRedirectStatus:true});
    }

    //Home Redirect
    HomeRedirect=()=>{
        if(this.state.HomeRedirectStatus === true){
            return <Redirect to="/"/>
        }
    }

    render() {

        if(SessionHelper.GetUserMobile() != null){
            return (
                <Container fluid={"true"} className="fixed-top shadow-sm p-2 m-0 bg-white">
                    <Row>
                        <Col className="p-1" lg={5} md={5} sm={12} xs={12}>
                            <Link to="/" className="btn"> <img className="nav-logo" src="images/logo.png"/></Link>
                            <Link to="/cart" className="cart-btn"><i className="fa fa-shopping-cart"></i> {this.state.CartCount} items </Link>
                            <Link to="/favourite" className="btn"><i className="fa h4 fa-heart"></i>  <sup><span className="badge text-white bg-danger">4</span></sup></Link>
                            <Link to="/notification" className="btn"><i className="fa h4  fa-bell"></i> <sup><span className="badge text-white bg-danger">4</span></sup></Link>
                        </Col>
                        <Col className="p-1" lg={5} md={5} sm={12} xs={12}>
                            <div className="input-group w-100">
                                <input type="text" onChange={this.searchOnChange} className="form-control" aria-label="Text input with segmented dropdown button"/>
                                <button type="button" onClick={this.searchOnClick} className="btn site-btn"><i className="fa fa-search"></i></button>
                            </div>
                        </Col>
                        <Col className="p-1" lg={2} md={2} sm={12} xs={12}>
                            <div className='input-group'>
                                <Dropdown>
                                    <Dropdown.Toggle variant='danger' id='dropdown-basic'>
                                        User Account
                                    </Dropdown.Toggle>
                                    <Dropdown.Menu>
                                        <Dropdown.Item>Cart Item</Dropdown.Item>
                                        <Dropdown.Item>Order List</Dropdown.Item>
                                        <Dropdown.Item onClick={this.onLogout}>Logout</Dropdown.Item>
                                    </Dropdown.Menu>
                                </Dropdown>
                            </div>
                        </Col>
                    </Row>

                    {/* call searchRedirect method */}
                    {this.searchRedirect()}
                    {this.HomeRedirect()}

                </Container>
            );
        }
        else{

            return (
                <Container fluid={"true"} className="fixed-top shadow-sm p-2 m-0 bg-white">
                    <Row>
                        <Col className="p-1" lg={5} md={5} sm={12} xs={12}>
                            <Link to="/" className="btn"> <img className="nav-logo" src="images/logo.png"/></Link>
                            <Link to="/cart" className="cart-btn"><i className="fa fa-shopping-cart"></i> {this.state.CartCount} items </Link>
                            <Link to="/favourite" className="btn"><i className="fa h4 fa-heart"></i>  <sup><span className="badge text-white bg-danger">4</span></sup></Link>
                            <Link to="/notification" className="btn"><i className="fa h4  fa-bell"></i> <sup><span className="badge text-white bg-danger">4</span></sup></Link>
                            
                        </Col>
                        <Col className="p-1" lg={5} md={5} sm={12} xs={12}>
                            <div className="input-group w-100">
                                <input type="text" onChange={this.searchOnChange} className="form-control" aria-label="Text input with segmented dropdown button"/>
                                <button type="button" onClick={this.searchOnClick} className="btn site-btn"><i className="fa fa-search"></i></button>
                            </div>
                        </Col>
                        <Col className="p-1" lg={2} md={2} sm={12} xs={12}>
                            <Link to="/onboard" className="h4 btn btn-danger"> LOGIN </Link>
                        </Col>
                    </Row>

                    {/* call searchRedirect method */}
                    {this.searchRedirect()}
                    {this.HomeRedirect()}

                </Container>
        );

        }



    }
}

export default NavMenuDesktop;