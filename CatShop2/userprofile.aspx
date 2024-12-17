<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="CatShop2.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

               <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                         <div class="row">
                     <div class="col-md-6">
                             <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     
                     </div>
                              <div class="col-md-6">
                                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     
                     </div>
                  </div>


                             <div class="row">
                     <div class="col-md-6">
                             <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     
                     </div>
                              <div class="col-md-6">
                                        <label>Email Id</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email Id" TextMode="Email" ></asp:TextBox>
                        </div>
                     
                     </div>
                  </div>

                                     <div class="row">
                     <div class="col-md-4">
                             <label>Division</label>
                        <div class="form-group">
                           <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                               <asp:ListItem Text="select"/>
                               <asp:ListItem Text="Dhaka" Value="Dhaka" />
                               <asp:ListItem Text="Khulna" Value="Khulna" />
                               <asp:ListItem Text="Chittagong" Value="Chittagong" />
                               <asp:ListItem Text="Rajshahi" Value="Rajshahi" />
                               <asp:ListItem Text="Sylhet" Value="Sylhet" />
                               <asp:ListItem Text="Barisal" Value="Barisal" />
                               <asp:ListItem Text="Rangpur" Value="Rangpur" />
                               <asp:ListItem Text="Mymensingh" Value="Mymensingh" />

                           </asp:DropDownList>
                        </div>
                     
                     </div>
                              <div class="col-md-4">
                                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     
                     </div>

                                 <div class="col-md-4">
                                        <label>pincode</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="pincode" TextMode="Number" ></asp:TextBox>
                        </div>
                     
                     </div>

                  </div>


                       <div class="row">
                     <div class="col">
                             <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     
                     </div>

                  </div>


                   <div class="row">
                       
                       <div class="col">
                           <center>
                           <span class ="badge badge-pill badge-info">Login Credentials</span>
                               </center>
                       </div>
                           
                   </div>



                     <div class="row">
                     <div class="col-md-4">
                             <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="User ID" Readonly="true" ></asp:TextBox>
                        </div>
                     
                     </div>
                              <div class="col-md-4">
                                        <label>Old Password</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="Password" TextMode="Password" ReadOnly="true" ></asp:TextBox>
                        </div>
                     
                     </div>

                                <div class="col-md-4">
                                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox10" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                        </div>
                     
                     </div>
                  </div>



                            <div class="row">
                     <div class="col">

 
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" Width="121px"  />
                        </div>
                     </div>
                  </div>




   
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>


          <div class="col-md-7">

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
                           <h4>Your Shop History</h4>
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

      </div>
   </div>
</asp:Content>
