import React, { Component, Fragment } from 'react'

export default class MegaMenu extends Component {
    constructor(){
        super();
        this.megaMenu = this.megaMenu.bind(this);
    }

    componentDidMount(){
        this.megaMenu();
    }

    megaMenu(){
        var acc = document.getElementsByClassName("accordion");
        var accNum = acc.length;
        
        var i;
        for(i=0; i<accNum; i++){
            acc[i].addEventListener("click", function(){
                this.classList.toggle("active");

                var panel = this.nextElementSibling;

                if(panel.style.maxHeight){
                    panel.style.maxHeight = null;
                }
                else{
                    panel.style.maxHeight = panel.scrollHeight + "px";
                }
            });
        }
    }

    render() {
        return (
            <div className="accordionMenuDiv">
                <div className="accordionMenuDivInside">
                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>
                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>
                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>
                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>
                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>
                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>
                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>
                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>

                    <button className="accordion"> <img className="accordionMenuIcon" src="https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1-1-580x386.jpg" /> Men's Item</button>
                    <div className="panel">
                        <ul>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                            <li><a href="#" className="accordionItem">Shirt</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        )
    }
}
