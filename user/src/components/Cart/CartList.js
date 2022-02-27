import axios from "axios";
import React, { Component, Fragment } from 'react';
import { Breadcrumb, Col, Container, Row } from "react-bootstrap";
import { Link } from "react-router-dom";
import { toast, ToastContainer } from "react-toastify";
import ApiURL from "../../api/ApiURL";
import ProductListLoader from "../placeholder/ProductListLoader";
import SessionHelper from "../SessionHelper/SessionHelper";

class CartList extends Component {
    constructor() {
        super();
        this.state = {
            ProductData: [],
            isLoading: "",
            MainDiv: "d-none",
            PageRefresh: false,
            city:"",
            payment_method:"",
            name:"",
            address:""

        }
    }

    componentDidMount() {
        axios.get(ApiURL.CartList(SessionHelper.GetUserMobile())).then(res => {
            this.setState({ProductData: res.data, isLoading: "d-none", MainDiv: ""});
        }).catch(err => {

        });
    }

    removeItem = (id) => {
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

    itemPlus=(id,quantity,price)=>{
        axios.get(ApiURL.CartItemPlus(id,quantity,price)).then((res)=>{
            if(res.data===1){
                toast.success("Item Quantity Increased",{position:'bottom-center'})
                this.setState({PageRefresh:true})
            }
            else {
                toast.error("Request Fail ! Try Again",{position:'bottom-center'})
            }

        }).catch((err)=>{
            toast.error("Request Fail ! Try Again",{position:'bottom-center'})
        })


    }

    itemMinus=(id,quantity,price)=>{

        axios.get(ApiURL.CartItemMinus(id,quantity,price)).then((res)=>{
            if(res.data===1){
                toast.success("Item Quantity Decreased",{position:'bottom-center'})
                this.setState({PageRefresh:true})
            }
            else {
                toast.error("Request Fail ! Try Again",{position:'bottom-center'})
            }
        }).catch((err)=>{
            toast.error("Request Fail ! Try Again",{position:'bottom-center'})
        })

    }

    cityOnChange=(e)=>{
        let city = e.target.value;
        this.setState({city:city});
    }

    paymentMethodOnChange=(e)=>{
        let payment_method = e.target.value;
        this.setState({payment_method:payment_method});
    }

    nameOnChange=(e)=>{
        let name = e.target.value;
        this.setState({name:name});
    }

    addressOnChange=(e)=>{
        let address = e.target.value;
        this.setState({address:address});
    }

    confirmOnClick=()=>{
        let city= this.state.city;
        let payment=this.state.payment_method;
        let name=this.state.name;
        let address=this.state.address;

        if(city.length===0){
            toast.error("Please select city",{position:'bottom-center'})
        }
        else if(payment.length===0){
            toast.error("Select payment method",{position:'bottom-center'})
        }
        else if(name.length===0){
            toast.error("Your name required",{position:'bottom-center'})
        }
        else if(address.length===0){
            toast.error("Delivery address required",{position:'bottom-center'})
        }
        else{
            let invoice=new Date().getTime();
            let mobile = SessionHelper.GetUserMobile()
            let MyFormData=new FormData();
            MyFormData.append('city',city);
            MyFormData.append('paymentMethod',payment);
            MyFormData.append('yourName',name);
            MyFormData.append('deliveryAddress',address);
            MyFormData.append('mobileNumber',mobile);
            MyFormData.append('invoice_no',invoice);
            MyFormData.append('ShippingPrice',"0000");

            axios.post(ApiURL.CartOrder,MyFormData).then((res)=>{
                if(res.data===1){
                    toast.success("Order request received",{position:'bottom-center'})
                    window.location.reload();
                }
                else{
                    toast.error("Request Fail ! Try Again",{position:'bottom-center'})
                }
            }).catch((err)=>{
                toast.error("Request Fail ! Try Again",{position:'bottom-center'})
            });
        }
    }

    PageReload=()=>{
        if(this.state.PageRefresh === true){
            window.location.reload();
        }
    }


    render() {
        let myList = this.state.ProductData;
        let totalPrice = 0;
        let listView = myList.map((productList, i) => {
            totalPrice = totalPrice+parseInt(productList.total_price);
            return  <div className="container">
                <div className="row">
                    <div className="col-md-3 text-center col-lg-3 col-sm-4 col-6">
                        <img className="w-100" src={productList.img} alt=""/>
                        <button onClick={()=>this.removeItem(productList.id)}  className="btn mt-2 btn-sm site-btn"><i className="fa fa-trash-alt"/></button>
                        <button onClick={()=>this.itemPlus(productList.id,productList.quantity,productList.unit_price)}  className="btn mt-2 mx-1 btn-sm site-btn"><i className="fa fa-plus"/></button>
                        <button onClick={()=>this.itemMinus(productList.id,productList.quantity,productList.unit_price)}   className="btn mt-2 mx-1 btn-sm site-btn"><i className="fa fa-minus"/></button>
                    </div>
                    <div className="col-md-7 col-lg-7 col-sm-8 col-6">
                        <h5 className="product-name-on-card">{(productList.product_name).substring(0,50) }</h5>
                        <h5 className="product-price-on-card">Total Price:{productList.total_price}TK</h5>
                        <h5 className="product-name-on-card">{(productList.product_info)}</h5>
                        <h5 className="product-price-on-card">Quantity:{ productList.quantity}</h5>
                    </div>
                </div>
                <hr/>
            </div>
        });

        return (
            <Fragment>
                <ProductListLoader isLoading={this.state.isLoading}/>
                <Container className={this.state.MainDiv +" animated slideInDown TopSection"} fluid={true}>
                    <Row>
                        <Breadcrumb className="shadow-sm w-100 bg-white">
                            <Breadcrumb.Item> <Link to="/">Home</Link>    </Breadcrumb.Item>
                            <Breadcrumb.Item> <Link to={"/cart"}>Cart</Link></Breadcrumb.Item>
                        </Breadcrumb>

                    </Row>
                    <Row className="mt-3">
                        <Col md={7} lg={7} sm={12} xs={12}>
                            {listView}
                        </Col>
                        <Col md={5} lg={5} sm={12} xs={12}>
                            <div className="card p-2">
                                <div className="card-body">
                                    <div className="container-fluid ">
                                        <div className="row">
                                            <div className="col-md-12 p-1  col-lg-12 col-sm-12 col-12">
                                                <h5 className="Product-Name text-danger">Total Due: {totalPrice} TK</h5>
                                            </div>
                                        </div>
                                        <div className="row">
                                            <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                                                <label className="form-label">Choose City</label>
                                                <select onChange={this.cityOnChange}  className="form-control">
                                                    <option value="">Choose</option>
                                                    <option value="Dhaka">Dhaka</option>
                                                </select>
                                            </div>
                                            <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                                                <label className="form-label">Choose Payment Method</label>
                                                <select onChange={this.paymentMethodOnChange} className="form-control">
                                                    <option value="">Choose</option>
                                                    <option value="Cash On Delivery">Cash On Delivery</option>
                                                </select>
                                            </div>
                                            <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                                                <label className="form-label">Your Name</label>
                                                <input onChange={this.nameOnChange} className="form-control" type="text" placeholder=""/>
                                            </div>

                                            <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                                                <label className="form-label">Delivery Address</label>
                                                <textarea onChange={this.addressOnChange}  rows={2}  className="form-control" type="text" placeholder=""/>
                                            </div>
                                            <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                                                <button onClick={this.confirmOnClick}  className="btn  site-btn">Confirm</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </Col>


                    </Row>
                </Container>
                <ToastContainer/>

                {this.PageReload()}

            </Fragment>
        );
    }
}

export default CartList;