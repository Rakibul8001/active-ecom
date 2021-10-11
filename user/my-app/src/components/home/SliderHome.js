import React, { Component, Fragment } from 'react'
import Slider from "react-slick";

export default class SliderHome extends Component {
    render() {
        const settings = {
            dots: true,
            infinite: true,
            autoplay:true,
            autoplaySpeed:3000,
            speed: 500,
            slidesToShow: 1,
            slidesToScroll: 1
        };
        return (
            <div>
                <Slider  {...settings}>
                    <div>
                        <img className="slider-img" src="https://images.vexels.com/media/users/3/194698/raw/34d9aa618f832510ce7290b4f183484a-shop-online-slider-template.jpg"/>
                    </div>
                    <div>
                        <img className="slider-img" src="https://images.vexels.com/media/users/3/194698/raw/34d9aa618f832510ce7290b4f183484a-shop-online-slider-template.jpg"/>
                    </div>
                    <div>
                        <img className="slider-img" src="https://images.vexels.com/media/users/3/194698/raw/34d9aa618f832510ce7290b4f183484a-shop-online-slider-template.jpg"/>
                    </div>
                </Slider>
            </div>
        )
    }
}
