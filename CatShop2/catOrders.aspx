<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="catOrders.aspx.cs" Inherits="CatShop2.catOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

              <div class="col-md-12">

                          <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100px" src="imgs/cat_icon.png" />
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

                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString5 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [cat_issue_tbl]"></asp:SqlDataSource>
                       <div class="col">


                       <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                           <Columns>
                               <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id" />
                               <asp:BoundField DataField="cat_id" HeaderText="cat_id" SortExpression="cat_id" />
                               <asp:BoundField DataField="order_date" HeaderText="order_date" SortExpression="order_date" />
                           </Columns>
                           </asp:GridView>
</div>
                   </div>

               
   
               </div>
            </div>

          </div>
</asp:Content>
