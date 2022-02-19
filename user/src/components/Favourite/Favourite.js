import axios from 'axios';
import React, {Component, Fragment} from 'react';
import {Button, Card, Col, Container, Row} from "react-bootstrap";
import ApiURL from '../../api/ApiURL';
import ProductListLoader from '../placeholder/ProductListLoader';
import SessionHelper from '../SessionHelper/SessionHelper';

import {toast} from "react-toastify";

class Favourite extends Component {

    constructor() {
        super();
        this.state = {
            ProductData: [],
            isLoading: "",
            MainDiv: "d-none",
            PageRefresh: false
        }
    }

    componentDidMount() {
        axios.get(ApiURL.FavList(SessionHelper.GetUserMobile())).then(res => {
            this.setState({ProductData: res.data, isLoading: "d-none", MainDiv: ""});
        }).catch(err => {

        });
    }

    removeItem = (e) => {
        let product_code = e.target.getAttribute('data-code');
        let mobile = SessionHelper.GetUserMobile();
        axios.get(ApiURL.removeFavItem(product_code,mobile)).then(res=>{
            if(res.data === 1){
                toast.success("Item Removed");
                this.setState({PageRefresh:true});
                console.log("data remove");
            }
            else{
                toast.error("Request Failed, Try again !");
            }
        }).catch(err=>{
            toast.error("Request Failed, Try again !");
        });
    }

    PageReload=()=>{
        if(this.state.PageRefresh === true){
            window.location.reload();
        }
    }

    render() {

        let myList = this.state.ProductData;
        let listView = myList.map((productList, i) => {
            return <Col className="p-1" key={i.toString()} xl={3} lg={3} md={3} sm={6} xs={6}>
                <Card className="card text-center w-100  image-box ">
                    <img src={productList.img} alt={productList.title}/>
                    <Card.Body>
                        <h5 className="product-name-on-card">{(productList.title).substring(0, 30)}</h5>
                        <Button onClick={this.removeItem} data-code={productList.product_code}
                                className="btn btn-sm site-btn"><i className="fa fa-trash-alt"></i> Remove </Button>
                    </Card.Body>
                </Card>
            </Col>
        });

        return (
            <Fragment>
                <ProductListLoader isLoading={this.state.isLoading}/>

                <Container
                    className={this.state.MainDiv + " text-center bg-white card-body shadow-sm py-5 BetweenTwoSection"}
                    fluid={true}>
                    <h4 className="section-title ">My Favourite Items</h4>
                    <h6 className="section-sub-title pb-3">Some Of Our Exclusive Collection, You May Like</h6>
                    <Row>
                        {listView}
                    </Row>
                </Container>

                {this.PageReload()}
            </Fragment>
        );
    }
}

export default Favourite;