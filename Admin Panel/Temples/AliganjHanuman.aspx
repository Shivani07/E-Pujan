<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Temples/TemplesDetails.master" AutoEventWireup="true" CodeFile="AliganjHanuman.aspx.cs" Inherits="Admin_Panel_Temples_AliganjHanuman" %>

<asp:Content ID="Content2" ContentPlaceHolderID="TempleName" Runat="Server">
    
    <h1>Aliganj Hanuman Mandir</h1>
    <h3>Aliganj Purani Chungi, Sector L, Aliganj, Lucknow.</h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="ShowMap" style="margin: 10px">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3558.4026013929088!2d80.94989951430277!3d26.890715067511902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399957d092d4002b%3A0xab680408f4efc21a!2sPurana+Hanuman+Mandir!5e0!3m2!1sen!2sin!4v1486409225127" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="TempleImage" Runat="Server" >
    <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/Temples/img/Chandrika-devi.JPG"/>--%>
    
    <div >
		<div class="img_block">
          <%--  <asp:Button ID="Button1" runat="server" Text="  &gt;&gt;"  BackColor="Black" 
                CssClass="style2" ForeColor="White" Height="50px" Width="50px" 
                onclick="Button1_Click"/>--%>
            
            <img src="img/Aliganj%20Hunuman-temple.jpg" alt="Services" style="width:650px; height:400px;padding:40px;"/>

            <%--<asp:Button ID="Button2" runat="server" Text=" &lt;&lt;" BackColor="Black" 
                CssClass="style2" ForeColor="White" Height="50px" Width="50px" />--%>
        
        <div id="imgFooter" style="margin-left:120px; width: 448px; height: 83px;">
            <div id="1" style="float: left; width: 136px; height: 78px">
                <a href=""><img src="img/Aliganj%20Hunuman-temple.jpg" style="height:81px; width:133px" /></a>
               
                
            </div>
            
            <div id="2" style="float:left; width: 136px; height: 79px">
                <a href=""><img src="img/hanuman-temple.jpg" style="height:81px; width:139px; margin-left: 0px;"/></a>
                 
            </div>
            <div id="3" style="float: left; width: 136px; height: 80px">
                
            <a href=""><img src="img/chchachiHanumanMandir.jpg" style="height:81px; width:133px"/></a>
                 
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
    <p style="font-size:medium; font-family: 'Malgun Gothic'; color: #800080;">Based on the temple history, Begum Rabiya of the Nawab Mohammed Ali Shah established this temple in the Lucknow. Once she had a dream that  there is a grand statue of Lord Hanuman lying near a garden and that she should  dig it out and kept in a temple. After she was blessed with a child, the Nawab thereafter immediately started excavating that place. 

To his utter surprise he found a statue of Lord Hanuman there. Nawab ordered that the statue be got established in a temple near Bara Imambara.  While the statue was being taken, the elephant carrying it, stopped and sat down at a place in Aliganj. A number of efforts to stand up the elephant became futile.  On the advice of a  saint of  the area, Begum ordered to establish the Lord  Hanuman at that same place.  A  temple was got constructed at this place and nearby plot of land was given for the upkeep of temple. This temple is now called new Hanuman Temple of Aliganj in Lucknow.The Famous ‘Bara Mangal’  festival of Lucknow is held in Lucknow each year in Jeth month and is associated mainly with this ancient temple.  The Lucknow Nawabs had great faith in Lord Hanuman and they always supported worship  and   the  Bara Mangal mela. A beautiful  large Kund (water pond) with stairs in the compound of the temple adds  to its antiquity.
</p></asp:Content>
