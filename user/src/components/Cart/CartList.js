import React, {Component,Fragment} from 'react';
import {Button, Card,ListGroup, Col, Container, Row,Form} from "react-bootstrap";
import {Link} from "react-router-dom";
import axios from "axios";
import ApiURL from "../../api/ApiURL";
import SessionHelper from "../SessionHelper/SessionHelper";
import ProductListLoader from "../placeholder/ProductListLoader";
import {toast, ToastContainer} from "react-toastify";

class CartList extends Component {
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
        axios.get(ApiURL.CartList(SessionHelper.GetUserMobile())).then(res => {
            this.setState({ProductData: res.data, isLoading: "d-none", MainDiv: ""});
        }).catch(err => {

        });
    }

    removeCartItem = (e) => {
        let id = e.target.getAttribute('data-id');

        axios.get(ApiURL.removeCartItem(id)).then(res=>{
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
            return  <Col className="p-1" key={i.toString()} xl={3} lg={3} md={3} sm={4} xs={6} >
                <Card className="cart-card w-100 image-box ">
                    <img src={productList.img} alt={productList.product_name}/>
                    <Card.Body>
                        <h5 className="product-name-on-card m-0 p-0">{(productList.product_name).substring(0,50)}</h5>
                        <p className="product-price-on-card m-0 p-0">Total Price: {productList.unit_price}Tk</p>
                    </Card.Body>
                    <div className="input-group m-0 p-0 w-100">
                        <Button onClick={this.removeCartItem} data-id={productList.id} className="btn text-danger w-50 btn-light"><i className="fa fa-trash-alt"></i> </Button>
                        <input placeholder="5" className="form-control w-50 text-center" type="number" />
                    </div>
                </Card>
            </Col>
        });

        return (
            <Fragment>
                <br/>
                <ProductListLoader isLoading={this.state.isLoading}/>

                <Container className={this.state.MainDiv +"TopSection pb-5 text-center shadow-sm bg-white"}>
                    <Row className="p-2 bg-light text-center">
                        <Col className="p-1" key={1} xl={12} lg={12} md={12} sm={12} xs={12}>
                            <h5 className=" "> PRODUCT CART LIST</h5>
                            <h6 className="m-0  p-0">Total Price 3000BDT | Total Item 04</h6>
                            <Link to="#" className="btn m-1  site-btn"> <i className="fa fa-shopping-cart"></i> Checkout Now</Link>
                        </Col>
                    </Row>
                    <Row className="p-2">
                        {listView}
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

                    {this.PageReload()}
                </Container>
            </Fragment>
        );
    }
}

export default CartList;