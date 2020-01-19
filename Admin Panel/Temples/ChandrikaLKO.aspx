<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Temples/TemplesDetails.master" AutoEventWireup="true" CodeFile="ChandrikaLKO.aspx.cs" Inherits="Admin_Panel_Temples_ChandrikaLKO" %>


<asp:Content ID="Content2" ContentPlaceHolderID="TempleName" Runat="Server">
    
    <h1>Chandrika Devi Mandir</h1>
    <h3>Near Bakshi Ka Talab, Sitapur Road, Lucknow.</h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="ShowMap" style="margin: 10px">
    <iframe  src="https://www.google.com/maps/embed?pb=!1m19!1m8!1m3!1d28435.849358481213!2d80.81653731984863!3d27.0149574619554!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x399bfc728f40b00d%3A0xe90db33474bd2225!2sChandrika+Devi+Mandir%2C+Kathwara%2C+Uttar+Pradesh+226202!3m2!1d27.0204037!2d80.8295002!5e0!3m2!1sen!2sin!4v1485972403039" 
        frameborder="0" 
        style="margin: 10px; border-style: none; border-color: inherit; border-width: 0; width: 523px; height: 377px;" 
        allowfullscreen></iframe>
</div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="TempleImage" Runat="Server" >
    <div >
		<div class="img_block"><a href="images/index-2_img-4-big.jpg">
            <img src="img/chindrika.jpg" alt="Services" style="width:650px; height:400px;padding:40px;"/></a>
        <div id="imgFooter" style="margin-left:120px; width: 448px; height: 83px;">
            <div id="1" style="float: left; width: 136px; height: 78px">
                <a href=""><img src="img/Chandrika-devi.JPG" style="height:81px; width:133px"/></a>
            </div>
            <div id="2" style="float:left; width: 136px; height: 79px">
                <a href=""><img src="img/vatVrakshChandrika.png" 
                    style="height:81px; width:139px; margin-left: 0px;"/></a>
            </div>
            <div id="3" style="float: left; width: 136px; height: 80px">
            </div>
        </div>
        </div>
    </div>			
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style2
        {
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content5" runat="server" contentplaceholderid="TempleDetail">
    <p style="font-size:medium; font-family: 'Malgun Gothic'; color: #800080;">It is situated on the bank of river Gomti at north-west of National Highway No.24 (Lucknow-Sitapur Road) in Kathvara village, near Lucknow City. This temple is 300 years old and is well known for the deity Chandrika Devi - a form of Goddess Durga. This place and nearby areas have relevance and religious significance since the time of the Ramayana. It is also called Mahi Sagar Teerth.
It is said that elder son of Shri Lakshmana - the founder of Lucknow, Rajkumar Chandraketu, was once passing with Ashwamegh Horse through Gomti. In the way, it became dark and hence he had to take rest in the then dense forest. He prayed Goddess for safety. Within a moment there was cool moon light and the Goddess appeared before him and assured him.
On the eve of Amavasya and Navratras, a lot of religious activities in the temple and around the temple premises are held. People from different parts of the State, come here for Hawan (Yagya), Mundan (total hair-cut). In addition, during these days, Kirtans, satsang (religious meetings) are also held.</p>
</asp:Content>
