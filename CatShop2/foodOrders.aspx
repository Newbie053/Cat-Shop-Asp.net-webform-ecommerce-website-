<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="foodOrders.aspx.cs" Inherits="CatShop2.foodOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                  <div class="col-md-12">

                          <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100px" src="Cat_inventory/cat_food1.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Order lists</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">
                       <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString6 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [food_issue_tbl]"></asp:SqlDataSource>
                       
                       <div class="col">

<asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource">
    <Columns>
        <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id" />
        <asp:BoundField DataField="food_id" HeaderText="food_id" SortExpression="food_id" />
        <asp:BoundField DataField="order_date" HeaderText="order_date" SortExpression="order_date" />
    </Columns>
</asp:GridView>

<asp:SqlDataSource runat="server" ID="SqlDataSource" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString6 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [food_issue_tbl]"></asp:SqlDataSource>

</div>
                   </div>

               
   
               </div>
            </div>

          </div>
</asp:Content>
