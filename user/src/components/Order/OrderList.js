import axios from "axios";
import React, { Component, Fragment } from 'react';
import { Breadcrumb, Col, Container, Modal, Row } from "react-bootstrap";
import { Link } from "react-router-dom";
import { toast, ToastContainer } from "react-toastify";
import ApiURL from "../../api/ApiURL";
import SessionHelper from '../SessionHelper/SessionHelper';

export default class OrderList extends Component {

    constructor(){
        super();
        this.state={
            orderData : [],
            isLoading:"",
            MainDiv:"d-none",
            modalShow:false,
            product_name:"",
            code:"",
            name:"",
            rating:"",
            comment:""
        }
    }

    componentDidMount(){
        axios.get(ApiURL.OrderByUser(SessionHelper.GetUserMobile())).then(res=>{
            this.setState({orderData:res.data, isLoading:"d-none",MainDiv:""});
        }).catch(err=>{

        });
    }

    ModalShow=(code,product_name)=>{
        this.setState({modalShow:true, code:code, product_name:product_name});
    }

    ModalClose=()=>{
        this.setState({modalShow:false});
    }

    nameOnChange =(event)=>{
        let name = event.target.value;
        this.setState({name:name});
    }

    RatingOnChange =(event)=>{
        let rating = event.target.value;
        this.setState({rating:rating});
    }

    CommentsOnChange =(event)=>{
        let comment = event.target.value;
        this.setState({comment:comment});
    }

    PostReview=()=>{
        let product_code = this.state.code;
        let product_name = this.state.product_name;
        let mobile = SessionHelper.GetUserMobile();
        let reviewer_name = this.state.name;
        let reviewer_rating = this.state.rating;
        let reviewer_comment = this.state.comment;

        if(reviewer_name.length===0){
            toast.error("Name required",{position:'bottom-center'})
        }
        else if(reviewer_rating.length===0){
            toast.error("Select rating point",{position:'bottom-center'})
        }
        else if(reviewer_comment.length===0){
            toast.error("Comments required",{position:'bottom-center'})
        }
        else if(reviewer_comment.length>150){
            toast.error("Comments can't more than 150 character",{position:'bottom-center'})
        }
        else {

            let myFormData = new FormData();
            myFormData.append('product_code',product_code);
            myFormData.append('product_name',product_name);
            myFormData.append('mobile',mobile);
            myFormData.append('reviewer_photo',"");
            myFormData.append('reviewer_name',reviewer_name);
            myFormData.append('reviewer_rating',reviewer_rating);
            myFormData.append('reviewer_comment',reviewer_comment);

            axios.post(ApiURL.postReview, myFormData).then(res=>{
                toast.success("Successfully Review Has Submitted!",{position:'bottom-center'})
                this.ModalClose();
            }).catch(err=>{
                toast.error("Request Failed, Try Again !",{position:'bottom-center'})
            });
        }

    }



  render() {

    const MyList=this.state.orderData;
    const MyView=MyList.map((ProductList,i)=>{
        return(
            <>
                <Col className=" d-flex justify-content-around p-1" key={i.toString()} md={12} lg={12} sm={12} xs={12}>
                    <div className="float-left w-75">
                        <h6 className="product-name-on-card"> {ProductList.product_name}</h6>
                        <h6 className="product-price-on-card"> Total Price: {ProductList.total_price }</h6>
                        <h6 className="product-name-on-card"> Quantity: {ProductList.product_quantity}</h6>
                        <h6 className="product-name-on-card"> Info: {ProductList.product_info }</h6>
                        <h6 className="product-price-on-card"> Status: {ProductList.order_status}</h6>
                    </div>
                    <div className="float-right px-2 w-25">
                        <button  onClick={this.ModalShow.bind(this,ProductList.product_code, ProductList.product_name)} className="btn btn-sm site-btn">Review</button>
                    </div>
                </Col>
                <hr className="bg-light w-100"/>
            </>
        )
    })

    return (
        <Fragment>
        <Container fluid={true} className="TopSection">
            <Row className='d-flex justify-content-center'>
                <Col  md={10} lg={10}  sm={12} xs={12}>
                    <Breadcrumb className="shadow-sm mt-2 bg-white">
                        <Breadcrumb.Item><Link to="/">Home</Link></Breadcrumb.Item>
                        <Breadcrumb.Item><Link to="/orderlist">Order History</Link></Breadcrumb.Item>
                    </Breadcrumb>
                    <Container className="mt-1">
                        <Row className="shadow-sm animated slideInDown bg-white p-4">
                            
                            {MyView}

                        </Row>
                    </Container>
                </Col>
            </Row>

            <ToastContainer/>

        </Container>


        <Modal show={this.state.modalShow} onHide={this.ModalClose}>
            <Modal.Header closeButton>
                <h6> <i className="fa theme-text fa-bell"></i></h6>
            </Modal.Header>
            <Modal.Body>
                <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                    <label className="form-label">Your Name</label>
                    <input onChange={this.nameOnChange} className="form-control" type="text" placeholder=""/>
                </div>

                <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                    <label className="form-label">Rating</label>
                    <select onChange={this.RatingOnChange} className="form-control">
                        <option value="">Choose</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div>

                <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                    <label className="form-label">Comments</label>
                    <textarea onChange={this.CommentsOnChange}  rows={2}  className="form-control" type="text" placeholder=""/>
                </div>
            </Modal.Body>
            <Modal.Footer>
                <button className="btn site-btn" onClick={this.ModalClose} >Cancel</button>
                <button className="btn site-btn" onClick={this.PostReview}>Post</button>
            </Modal.Footer>
        </Modal>


    </Fragment>
    );
  }
}
