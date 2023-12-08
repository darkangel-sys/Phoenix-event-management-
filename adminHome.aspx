<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminHome.aspx.cs" Inherits="adminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
    <script src="admin.js" type="text/javascript"></script>

     <link rel="stylesheet" href="style/admincss.css">
    
    <title></title>
    
</head>
<body>
    
	<form id="form1" runat="server">
	<div class="wrapper">
		<div class="header-wrap">
			<div class="center-wrap">
				<div class="header">
					<div  style="color:white"class="logo">
						PHOENIX EVENTS
						<!-- <span class="app-name">Benchmark Plus</span> -->
					</div>
					<div class="user-info-wrap">
						<div class="user-info">
							<div class="user-image">
								<img src="images/user avatar.png" />
							</div>
							<div class="user-details">
								<div class="user-name">Harshitha K</div>		
								<div style="color :white">Manager </div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="content-wrap center-wrap avm-benchmark">
				
			<div class="row page-section">

				
					<div class="content-wrapper avm-tab-section">
					<ul class="nav nav-tabs" role="tablist">
			
					</ul>
					<div class="tab-content">
                        <div class="eventrow">
                            <br />
                            <br /
						       <asp:Label ID="Label1" runat="server" Text="eventName"></asp:Label>
                       &nbsp;&nbsp;&nbsp;
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </div>
                              <div class="eventrow"> <asp:Label ID="Label2" runat="server" Text="event type"></asp:Label>
                               &nbsp;&nbsp;&nbsp;
                               <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="eventtypename" DataValueField="eventid">
                               </asp:DropDownList>
                                  </div>
                               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [eventtypename], [eventid] FROM [eventtype]"></asp:SqlDataSource>
                             <div class="eventrow">

                              <asp:Label ID="Label3" runat="server" Text="inclusions"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" Height="75px" TextMode="MultiLine" Width="343px"></asp:TextBox>
                                 </div>
                          <div class="eventrow">   <asp:Label ID="Label4" runat="server" Text="descriptions"></asp:Label>				
							<asp:TextBox ID="TextBox4" runat="server" Height="81px" TextMode="MultiLine" Width="305px"></asp:TextBox>
                              </div>
                      <div class="eventrow">  <asp:Label ID="Label5" runat="server" Text="price"></asp:Label>				
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				
							<asp:TextBox ID="TextBox5" runat="server" Height="81px"></asp:TextBox>
                          </div>
                       <div class="eventrow"> <asp:Label ID="Label6" runat="server" Text="image"></asp:Label>	
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
                        <asp:FileUpload ID="FileUpload1" runat="server" />
						</div>
                        <div class="eventrow">

                            <button type="button" id="Button1">Add event</button>
                            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" style="height: 29px" />
                        </div>
                        <div class="eventrow">
                            <asp:Label ID="Label7" runat="server" Text="Eventtype"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                        <div class="eventrow">
                            <asp:Label ID="Label8" runat="server" Text="image"></asp:Label><asp:FileUpload ID="FileUpload2" runat="server" />
                        </div>
                        <div class="eventrow">
                            <asp:Button ID="Button3" runat="server" Text="addevent type" OnClick="Button3_Click" />                        </div>
					</div>
				</div>
                                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="id" DataValueField="id"></asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id] FROM [event1]"></asp:SqlDataSource>

                <asp:FileUpload ID="FileUpload3" runat="server" />
                <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
				
			</div>
		</div>
		
		<div class="footer-section">©2021 Phoenix Events, all rights reserved</div>
		
	
 
        
		
	
 
    </form>
		
	
</body>

</html>
