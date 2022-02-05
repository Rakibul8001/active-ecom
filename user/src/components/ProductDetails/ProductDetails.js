import React, {Component,Fragment} from 'react';
import {Container,Row,Col} from "react-bootstrap";
import InnerImageZoom from 'react-inner-image-zoom';
import 'react-inner-image-zoom/lib/InnerImageZoom/styles.css';

class ProductDetails extends Component {
    constructor() {
        super();
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
                    Price: <strike class="text-secondary">{ price}TK</strike>  { special_price} TK
                </p>
            )
        }
  
    }

    render() {

        let Product = this.props.ProductData;

        let price =Product['product'][0]['price'];
        let special_price =Product['product'][0]['special_price'];
        let color =Product['product_details'][0]['color'];
        let size =Product['product_details'][0]['size'];

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

        return (
            <Fragment>
                <Container  className="BetweenTwoSection" fluid={true}>
                    <Row className="p-2">
                        <Col className="shadow-sm bg-white pb-3 mt-4" md={12} lg={12} sm={12} xs={12}>
                            <Row>
                                <Col className="p-3" md={6} lg={6} sm={12} xs={12}>
                                    
                                    <InnerImageZoom 
                                        src={Product['product'][0]['image']} 
                                        zoomSrc={Product['product'][0]['image']} 
                                        zoomScale={1.8}
                                        zoomType={"hover"}
                                    />

                                    <Container  className="my-3">
                                        <Row>
                                            <Col className="p-0 m-0"  md={3} lg={3} sm={3} xs={3}>
                                                <img className="w-100" src={Product['product_details'][0]['img1']}/>
                                            </Col>
                                            <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                <img className="w-100" src={Product['product_details'][0]['img2']} />
                                            </Col>
                                            <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                <img className="w-100" src={Product['product_details'][0]['img3']} />
                                            </Col>
                                            <Col className="p-0 m-0" md={3} lg={3} sm={3} xs={3}>
                                                <img className="w-100" src={Product['product_details'][0]['img4']}/>
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
                                        <select className="form-control form-select">
                                            <option value="">Choose Color</option>
                                            {ColorOption}
                                        </select>
                                    </div>

                                    <div className={SizeDiv}>
                                        <h6 className="mt-2">Choose Size</h6>
                                        <select className="form-control form-select">
                                            <option value="">Choose Size</option>
                                            {SizeOption}
                                        </select>
                                    </div>

                                    <div className="">
                                        <h6 className="mt-2">Choose Quantity</h6>
                                        <select className="form-control form-select">
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
                                        <button className="btn site-btn m-1 "> <i className="fa fa-shopping-cart"></i>  Add To Cart</button>
                                        <button className="btn btn-primary m-1"> <i className="fa fa-car"></i> Order Now</button>
                                        <button className="btn btn-primary m-1"> <i className="fa fa-heart"></i> Favourite</button>
                                    </div>
                                </Col>
                            </Row>

                            <Row>
                                <Col className="" md={6} lg={6} sm={12} xs={12}>
                                    <h6 className="mt-2">DETAILS</h6>
                                    <p>{Product['product_details'][0]['details']}</p>
                                </Col>

                                <Col className="" md={6} lg={6} sm={12} xs={12}>
                                    <h6 className="mt-2">REVIEWS</h6>
                                    <p className=" p-0 m-0"><span className="Review-Title">Rabbil Hasan</span> <span className="text-success"><i className="fa fa-star"></i> <i className="fa fa-star"></i> <i className="fa fa-star"></i> <i className="fa fa-star"></i> </span> </p>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>

                                    <p className=" p-0 m-0"><span className="Review-Title">Rabbil Hasan</span> <span className="text-success"><i className="fa fa-star"></i> <i className="fa fa-star"></i> <i className="fa fa-star"></i> <i className="fa fa-star"></i> </span> </p>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>

                                    <p className=" p-0 m-0"><span className="Review-Title">Rabbil Hasan</span> <span className="text-success"><i className="fa fa-star"></i> <i className="fa fa-star"></i> <i className="fa fa-star"></i> <i className="fa fa-star"></i> </span> </p>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>

                                </Col>
                            </Row>

                        </Col>
                    </Row>
                </Container>

            </Fragment>
        );
    }
}

export default ProductDetails;