import React from "react";
import "../../styles/components/layout/Header.css";

const Header = (props) => {

    return(
        <header>
            <div className= "Holder">
                <div className= "logo">
                    <img src="images/header/cabecera.png" width= "100" alt= "Transportes X"/>
                    <h1>Servicios Digitales Marce</h1>
                    
                </div>       
                
            </div>

        </header>

    );
}

export default Header;
