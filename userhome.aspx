<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="userhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link rel="stylesheet" href="style/admincss.css">

    <style type="text/css">
        .auto-style1 {
            margin-right: 1148px;
        }
    </style>

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
					</div>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
				        <asp:DataList ID="DataList1" runat="server" DataKeyField="eventid" DataSourceID="SqlDataSource2" CssClass="auto-style1"  OnItemCommand="DataList1_ItemCommand">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" ImageUrl='<%# Eval("images") %>' runat="server" Height="265px" Width="583px" CommandName="ViewItemEvents" CommandArgument='<%# Eval("eventid")%>'  />
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("eventtypename") %>'></asp:Label>
                                
                            </ItemTemplate>
                        </asp:DataList>
				        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [eventtype]"></asp:SqlDataSource>
				        <asp:DataList ID="DataList2" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" Width="397px" OnItemCommand="DataList2_ItemCommand">
                            <ItemTemplate>
                                <br />
                                <br />
                                <asp:Image ID="Image1" runat="server" Height="259px" ImageUrl='<%# Eval("eventimage") %>' Width="365px" />
                                <br />
                                <br />
                                id:
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                <br />
                                eventname:
                                <asp:Label ID="eventnameLabel" runat="server" Text='<%# Eval("eventname") %>' />
                                &nbsp;&nbsp;
                                <br />
                                eventprice:
                                <asp:Label ID="eventpriceLabel" runat="server" Text='<%# Eval("eventprice") %>' />
                                &nbsp;<br />
<br />
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="View Detail" CommandName="ViewItemDetails" CommandArgument='<%# Eval("id")%>'/>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [eventname], [eventprice], [eventimage] FROM [event1] WHERE ([eventypeid] = @eventypeid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label2" Name="eventypeid" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
				        <br />
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        <asp:Image ID="Image2" runat="server" />

				</div>
                
                
			</div>
		</div>
		<div class="footer-section">©2021 Phoenix Events, all rights reserved</div>
	</div>
    </form>
</body>
</html>
