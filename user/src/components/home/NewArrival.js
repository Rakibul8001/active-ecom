import React, {Component,Fragment} from 'react';
import Slider from "react-slick";
import {Card, Col, Container, Row} from "react-bootstrap";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import {Link} from "react-router-dom";
import ApiURL from '../../api/ApiURL';
import axios from 'axios';

class NewArrival extends Component {

    constructor(props) {
        super(props);
        this.state={
            ProductData:[]
        }
        this.next=this.next.bind(this);
        this.previous=this.previous.bind(this)

    }

    componentDidMount(){
        axios.get(ApiURL.productListByRemark('NEW')).then(response=>{
            this.setState({ProductData:response.data});
        }).catch(error=>{

        });
    }

    next(){
        this.slider.slickNext();
    }
    previous(){
        this.slider.slickPrev();
    }

    render() {

        const myList = this.state.ProductData;

        const ListView = myList.map((productList,i)=>{
            if(productList.special_price == 'NA'){
                return <div className="p-1">
                <Link to="/productDetails">
                <Card className="card w-100  image-box ">
                    <img src={productList.image}/>
                    <Card.Body>
                        <h5 className="product-name-on-card">{productList.title}</h5>
                        <p className="product-price-on-card">Price: {productList.price}</p>
                    </Card.Body>
                </Card>
                </Link>

            </div>
            }
            else{
                return <div className="p-1">
                <Link to="/productDetails">
                <Card className="card image-box ">
                    <img src={productList.image}/>
                    <Card.Body>
                        <h5 className="product-name-on-card">{productList.title}</h5>
                        <p className="product-price-on-card">
                            Price: <strike className="text-secondary">{productList.price}</strike> {productList.special_price}
                        </p>
                    </Card.Body>
                </Card>
                </Link>

            </div>
            }

        });


        const settings = {
            dots: false,
            infinite: true,
            speed: 500,
            autoplaySpeed:3000,
            autoplay:true,
            slidesToShow: 4,
            slidesToScroll: 1,
            initialSlide: 0,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 4,
                        slidesToScroll: 1,
                        infinite: true,
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1,
                        initialSlide: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                }
            ]
        };

        return (
            <Container className="text-center BetweenTwoSection" fluid={true}>
                <h4 className="section-title px-0 mx-0 ">NEW ARRIVAL
                    <a className="btn btn-sm ml-2 site-btn" onClick={this.previous} >
                        <i className="fa fa-angle-left"></i>
                    </a>
                    <a className="btn btn-sm ml-2 site-btn" onClick={this.next}>
                        <i className="fa fa-angle-right"></i>
                    </a>
                </h4>
                <h6 className="section-sub-title pb-3">Some Of Our Exclusive Collection, You May Like</h6>
                    <Slider  ref={c=>(this.slider=c)}   {...settings}>
                        {ListView}
                    </Slider>


            </Container>
        );
    }
}

export default NewArrival;