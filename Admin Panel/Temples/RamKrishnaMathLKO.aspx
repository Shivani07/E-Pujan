<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Temples/TemplesDetails.master" AutoEventWireup="true" CodeFile="RamKrishnaMathLKO.aspx.cs" Inherits="Admin_Panel_Temples_RamKrishnaMathLKO" %>

<asp:Content ID="Content2" ContentPlaceHolderID="TempleName" Runat="Server">
    
    <h1>Ram Krishna Math</h1>
    <h3>Nirala Nagar, Lucknow.</h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="ShowMap" style="margin: 10px">
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1779.4535757490664!2d80.94032540788685!3d26.874690864932948!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399bfd83ad1c0fff%3A0xa066ff1e67aa4779!2sSri+Ramakrishna+Math+%26+Ramakrishna+Mission+Sevashrama%2C+Lucknow!5e0!3m2!1sen!2sin!4v1486409131912" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="TempleImage" Runat="Server" >
    <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/Temples/img/Chandrika-devi.JPG"/>--%>
    
    <div >
		<div class="img_block">
          <%--  <asp:Button ID="Button1" runat="server" Text="  &gt;&gt;"  BackColor="Black" 
                CssClass="style2" ForeColor="White" Height="50px" Width="50px" 
                onclick="Button1_Click"/>--%>
            <img src="img/ram-krishna-math.jpg"  alt="Services"style="width:650px; height:400px;padding:40px;"/>
           
           
            <%--<asp:Button ID="Button2" runat="server" Text=" &lt;&lt;" BackColor="Black" 
                CssClass="style2" ForeColor="White" Height="50px" Width="50px" />--%>
        
        <div id="imgFooter" style="margin-left:120px; width: 448px; height: 83px;">
            <div id="1" style="float: left; width: 136px; height: 78px">
                <a href=""><img src="img/ram-krishna-math.jpg" style="height:81px; width:133px"/></a>
                
            </div>
            
            <div id="2" style="float:left; width: 136px; height: 79px">
                <a href=""><img src="img/ramakrishna-math.jpg" style="height:81px; width:139px; margin-left: 0px;"/></a>
                 
            </div>
            <div id="3" style="float: left; width: 136px; height: 80px">
                
            <a href=""><img src="" style="height:81px; width:133px"/></a>
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
    <p style="font-size:medium; font-family: 'Malgun Gothic'; color:crimson;">Sri Ramakrishna Math, Lucknow is a monastic organisation for men created by Ramakrishna (1836–1886), a 19th-century saint of Bengal. The motto of the Ramakrishna Math and Ramakrishna Mission is: "For one's own salvation, and for the welfare of the world". It contains idols of Ramakrishna, Swami Vivekananda and Holy Mother Sarada Devi.
     <br /><br />The new temple was constructed adjacent to the old shrine and opened on 2 February 1987. The temple is built in marble, a favourite of the Mughal architect emperor Shah Jahan. The marble has been especially obtained from the mines of Bundi and Makrana. To add an element of contrast, a style innovated by the Mughals, (using red sandstone along with marble) has been adopted in this temple.

The figures from mythology such as the Shankha (conch shell), Chakra (disc), Padma (lotus), Trishul (Trident), Damaru (drum), Vajra (Thunderbolt) and Hansas (swans) have all been painted with red cement.
</p></asp:Content>


