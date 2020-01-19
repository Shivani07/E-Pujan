<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Temples/TemplesDetails.master" AutoEventWireup="true" CodeFile="MankameshwarLKO.aspx.cs" Inherits="Admin_Panel_Temples_MankameshwarLKO" %>

<asp:Content ID="Content2" ContentPlaceHolderID="TempleName" Runat="Server">
    
    <h1>Mankameshwar Mandir</h1>
    <h3>Mukarimnagar, Hasanganj, Lucknow.</h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="ShowMap" style="margin: 10px">
    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14236.628321588923!2d80.929696!3d26.86675!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd9e65af10f465050!2sMankameshwar+Temple!5e0!3m2!1sen!2sin!4v1486408788858" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="TempleImage" Runat="Server" >
    <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/Temples/img/Chandrika-devi.JPG"/>--%>
    
    <div >
		<div class="img_block">
          <%--  <asp:Button ID="Button1" runat="server" Text="  &gt;&gt;"  BackColor="Black" 
                CssClass="style2" ForeColor="White" Height="50px" Width="50px" 
                onclick="Button1_Click"/>--%>
           
            <img src="img/mankameshwar-mandir1.jpg" alt="Services" style="width:650px; height:400px;padding:40px;" />

            <%--<asp:Button ID="Button2" runat="server" Text=" &lt;&lt;" BackColor="Black" 
                CssClass="style2" ForeColor="White" Height="50px" Width="50px" />--%>
        
        <div id="imgFooter" style="margin-left:120px; width: 448px; height: 83px;">
            <div id="1" style="float: left; width: 136px; height: 78px">
                <a href=""><img src="img/mankameshwar-mandir2.jpg" style="height:81px; width:133px"/></a>
           
            </div>
            
            <div id="2" style="float:left; width: 136px; height: 79px">
                <a href=""><img src="img/mankameshwar-mandir3.jpg" style="height:81px; width:139px; margin-left: 0px;"/></a>
            </div>
            <div id="3" style="float: left; width: 136px; height: 80px">
          
            <a href=""><img src="img/mankameswar-mandir4.jpg" style="height:81px; width:133px"/></a>
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
    <p style="font-size:medium; font-family: 'Malgun Gothic'; color: #800080;">Inaugurated on January 26, 1967, this ashram includes 2 Neem Karoli Baba murtis, 2 Hanuman murtis, and 2 Shiva Linga.

This temple performs a major service in distributing Maharaj-ji's prasad in Lucknow, and seems to be one of the most visited temples in the city.

The ashram is always decorated as for a bhandara, thanks to a devoted staff. Maharaj-ji said that Lucknow Sankat Mochan Hanuman-ji (known as "the wish fulfilling Hanuman") is "the Governor General of all Hanuman's."

Wall murals depict: Ram and Sita, and Ram and Laxshman with Hanuman and the army of monkeys and bears building the bridge to Lanka.
</p></asp:Content>
