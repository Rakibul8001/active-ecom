import React, {Component,Fragment} from 'react';
import {Link} from "react-router-dom";

class MegaMenu extends Component {

    constructor(props) {
        super();
    }

    clickMenuItem=(event)=>{
        event.target.classList.toggle('active');
        let panel=event.target.nextElementSibling;
        if(panel.style.maxHeight){
            panel.style.maxHeight=null;
        }
        else{
            panel.style.maxHeight=panel.scrollHeight+ "px"
        }
    }




    render() {

        const catList = this.props.data;
        
        const viewList = catList.map((parentList,i)=>{
            return <div key={i.toString()}>
                    <button onClick={this.clickMenuItem} className="accordion"> <img className="accordionMenuIcon" src={parentList.ParentCategoryImg}/>  {parentList.ParentCategoryName}</button>
                    <div className="panel">
                        <ul>
                            {
                                (parentList.SubCategory).map((childList,i)=>{
                                    return <li>
                                        <Link to={"ProductBySubcategory/"+childList.cat1_name+"/"+childList.cat2_name} className="accordionItem">{childList.cat2_name}</Link>
                                        </li>
                                })
                            }
                        </ul>
                    </div>
                </div>
        });


        return (
            <div className="accordionMenuDiv">
                <div className="accordionMenuDivInside">
                    {viewList}
                </div>
            </div>
        );
    }
}

export default MegaMenu;