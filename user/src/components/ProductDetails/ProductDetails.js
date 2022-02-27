import axios from 'axios';
import React, {Component,Fragment} from 'react';
import {Container,Row,Col} from "react-bootstrap";
import InnerImageZoom from 'react-inner-image-zoom';
import 'react-inner-image-zoom/lib/InnerImageZoom/styles.css';
import ApiURL from '../../api/ApiURL';
import ReviewList from './ReviewList';
import SuggestedProducts from './SuggestedProducts';
import { ToastContainer, toast } from 'react-toastify';
import SessionHelper from '../SessionHelper/SessionHelper';
import { Redirect } from 'react-router';

class ProductDetails extends Component {
    constructor() {
        super();
        this.state={
            PreviewImg:"0",
            isColor:null,
            isSize:null,
            color:"",
            size:"",
            quantity:"",
            productCode:null,
            AddToCart:"Add To Cart",
            PageRefresh:false,
            addToFav:"Favourite",
            RedirectToLogin:false
        }
    }

    componentDidMount(){
        window.scroll(0,0)
    }

    PriceOption(special_price,price){
        if(special_price==="NA"){
            return(
                <p className="product-price-on-card">Price: { price}TK</p>
            )
        }
        else{
            return(
                <p className="product-price-on-card">
                    Price: <strike className="text-secondary">{ price}TK</strike>  { special_price} TK
                </p>
            )
        }
  
    }

    PreviewImg=(event)=>{
        let PreviewImg = event.target.getAttribute("src");
        this.setState({PreviewImg:PreviewImg});
    }

    //AddToCart
    addToCartButton=()=>{
        if(SessionHelper.GetUserMobile() !==null){
            let isColor = this.state.isColor;
            let isSize = this.state.isSize;
            let color = this.state.color;
            let size = this.state.size;
            let quantity = this.state.quantity;
            let mobile = SessionHelper.GetUserMobile();
            let product_code=this.state.productCode;
    
            if(isColor === "YES" && color.length === 0){
                toast.error("Please select product color!");
            }
            else if(isSize === "YES" && size.length ===0){
                toast.error("Please select Product size!");
            }
            else if(quantity.length === 0){
                toast.error("Please select quantity!");
            }
            else{
                let myFormData = new FormData();
                myFormData.append("color",color);
                myFormData.append("size",size);
                myFormData.append("quantity",quantity);
                myFormData.append("product_code",product_code);
                myFormData.append("mobile",mobile);
        
                this.setState({AddToCart:"Cart Adding..."});
                axios.post(ApiURL.addToCartUrl,myFormData).then(res=>{
                    if(res.data == 1){
                        this.setState({AddToCart:"Add To Cart", PageRefresh:true});
                        toast.success("Cart Added!")
                    }
                    else{
                        this.setState({AddToCart:"Add To Cart"});
                        toast.error("Request Failed! Try again");
                    }
                }).catch(err=>{
                    this.setState({AddToCart:"Add To Cart"});
                    toast.error(err);
                });
            }
        }
        else{

            let rememberpath = window.location.pathname;

            SessionHelper.SetRememberPath(rememberpath);

            setTimeout(function(){
                toast.error("User mobile not found! Please Login First");
            }, 1000);

            this.setState({RedirectToLogin:true});
        }

    }

    colorOnChange=(e)=>{
        let color = e.target.value;
        this.setState({color:color});
    }
    sizeOnChange=(e)=>{
        let size = e.target.value;
        this.setState({size:size});
    }
    quantityOnChange=(e)=>{
        let quantity = e.target.value;
        this.setState({quantity:quantity});
    }

    //page refresh
    RefreshPage=()=>{
        if(this.state.PageRefresh === true){
            //refresh current page
            window.location.reload();
        }

    }



    //addToFav
    addToFavButton =()=>{

        if(SessionHelper.GetUserMobile() !== null){

            let mobile = SessionHelper.GetUserMobile();
            let product_code=this.state.productCode;

            this.setState({addToFav:"Adding..."});
            axios.get(ApiURL.AddToFavourite(product_code,mobile)).then(res=>{
                if(res.data === 1){
                    this.setState({addToFav:"Favourite"});
                    toast.success("Added To Favourite List!");
                    window.location.reload();
                }
                else{
                    this.setState({addToFav:"Favourite"});
                    toast.error("Request Failed! Try again");
                }
            }).catch(err=>{
                this.setState({addToFav:"Favourite"});
                toast.error("Request Failed! Try again");
            });

        }
        else{

            let rememberpath = window.location.pathname;

            SessionHelper.SetRememberPath(rememberpath);

            setTimeout(function(){
                toast.error("User mobile not found! Please Login First");
            }, 1000);
            this.setState({RedirectToLogin:true});
        }
    }

    PageRedirectToLogin=()=>{
        if(this.state.RedirectToLogin === true){
            return (
                <Redirect to="/onboard" />
            );
        }
    }

    render() {  

        let Product = this.props.ProductData;
        let price =Product['product'][0]['price'];
        let special_price =Product['product'][0]['special_price'];
        let color =Product['product_details'][0]['color'];
        let size =Product['product_details'][0]['size'];
        let subcategory = Product['product'][0]['subcategory'];
        let product_code = Product['product'][0]['product_code'];
        let img1 = Product['product_details'][0]['img1'];

        //setstate previewimg 
        if(this.state.PreviewImg === "0"){
            this.setState({PreviewImg:img1});
        }

        var ColorDiv="d-none"
        if(color!="NA"){
            let ColorArray = color.split(',');
            var ColorOption=ColorArray.map((ColorList,i)=>{
                return <option value={ColorList}>{ColorList}</option>
            })
            ColorDiv=""
        }
        else{
            ColorDiv="d-none"
        }



        var SizeDiv="d-none"
        if(size!="NA"){
            let SizeArray = size.split(',');
            var  SizeOption=SizeArray.map((SizeList,i)=>{
                return <option value={SizeList}>{SizeList}</option>
            })
            SizeDiv=""
        }
        else{
            SizeDiv="d-none"
        }

        if(this.state.isSize===null){
            if(size!=="NA"){
                this.setState({isSize:"YES"})
            }
            else{
                this.setState({isSize:"NO"})
            }
        }

        if(this.state.isColor===null){
            if(color!=="NA"){
                this.setState({isColor:"YES"})
            }
            else{
                this.setState({isColor:"NO"})
            }
        }

        if(this.state.productCode === null){
            this.setState({productCode:product_code});
        }

        return (
            <Fragment>
                <Container  className="BetweenTwoSection" fluid={true}>
                    <Row className="p-2">
                        <Col className="shadow-sm bg-white pb-3 mt-4" md={12} lg={12} sm={12} xs={12}>
                            <Row>
                                <Col className="p-3" md={6} lg={6} sm={12} xs={12}>
                                    
                                    <InnerImageZoom 
                                        src={this.state.PreviewImg} 
                                        zoomSrc={this.state.PreviewImg} 
                                        zoomScale={1.8}
                                        zoomType={"hover"}
                                    />

                                    <Container  className="my-3">
                                        <Row>
                                            <Col className="p-0 image-box m-0"  md={3} lg={3} sm={3} xs={3}>
                                                <img className="w-100 Product-sm-img" onClick={this.PreviewImg} src={Product['product_details'][0]['img1']}/>
                                            </Col>
                                            <Col className="p-0 image-box m-0" md={3} lg={3} sm={3} xs={3}>
                                                <img className="w-100 Product-sm-img" onClick={this.PreviewImg} src={Product['product_details'][0]['img2']} />
                                            </Col>
                                            <Col className="p-0 image-box m-0" md={3} lg={3} sm={3} xs={3}>
                                                <img className="w-100 Product-sm-img" onClick={this.PreviewImg} src={Product['product_details'][0]['img3']} />
                                            </Col>
                                            <Col className="p-0 image-box m-0" md={3} lg={3} sm={3} xs={3}>
                                                <img className="w-100 Product-sm-img" onClick={this.PreviewImg} src={Product['product_details'][0]['img4']}/>
                                            </Col>
                                        </Row>
                                    </Container>
                                </Col>
                                <Col className="p-3 " md={6} lg={6} sm={12} xs={12}>
                                    <h5 className="Product-Name">{Product['product'][0]['title']}</h5>
                                    <h6 className="section-sub-title">{Product['product_details'][0]['desc']}</h6>
                                    
                                    {this.PriceOption(special_price,price)}

                                    <div className={ColorDiv}>
                                        <h6 className="mt-2">Choose Color</h6>
                                        <select onChange={this.colorOnChange} className="form-control form-select">
                                            <option value="">Choose Color</option>
                                            {ColorOption}
                                        </select>
                                    </div>

                                    <div className={SizeDiv}>
                                        <h6 className="mt-2">Choose Size</h6>
                                        <select onChange={this.sizeOnChange} className="form-control form-select">
                                            <option value="">Choose Size</option>
                                            {SizeOption}
                                        </select>
                                    </div>

                                    <div className="">
                                        <h6 className="mt-2">Choose Quantity</h6>
                                        <select onChange={this.quantityOnChange} className="form-control form-select">
                                            <option value="">Choose Quantity</option>
                                            <option value="01">01</option>
                                            <option value="02">02</option>
                                            <option value="03">03</option>
                                            <option value="04">04</option>
                                            <option value="05">05</option>
                                            <option value="06">06</option>
                                            <option value="07">07</option>
                                            <option value="08">08</option>
                                            <option value="09">09</option>
                                            <option value="10">10</option>
                                        </select>
                                    </div>

                                    <div className="input-group mt-3">
                                        <button onClick={this.addToCartButton} className="btn site-btn m-1 "> <i className="fa fa-shopping-cart"></i>{this.state.AddToCart}</button>
                                        <button className="btn btn-primary m-1"> <i className="fa fa-car"></i> Order Now</button>
                                        <button onClick={this.addToFavButton} className="btn btn-primary m-1"> <i className="fa fa-heart"></i>{this.state.addToFav}</button>
                                    </div>
                                </Col>
                            </Row>

                            <Row>
                                <Col className="" md={6} lg={6} sm={12} xs={12}>
                                    <h6 className="mt-2">DETAILS</h6>
                                    <p>{Product['product_details'][0]['details']}</p>
                                </Col>

                                <Col className="" md={6} lg={6} sm={12} xs={12}>

                                    <ReviewList product_code={product_code}/>

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

                {/* Suggested Products */}
                <SuggestedProducts subcategory={subcategory} />
                {/* Page Refresh rendering */}
                {this.RefreshPage()}

                {this.PageRedirectToLogin()}

            </Fragment>
        );
    }
}

export default ProductDetails;