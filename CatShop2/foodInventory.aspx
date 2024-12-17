<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="foodInventory.aspx.cs" Inherits="CatShop2.foodInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

                <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });

                    function readURL(input) {
                        if (input.files && input.files[0]) {
                            var reader = new FileReader();

                            reader.onload = function (e) {
                                $('#imgview').attr('src', e.target.result);
                            };

                            reader.readAsDataURL(input.files[0]);
                        }
                    }
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
                        <h4>Food Details</h4>
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <center>
                         <img id="imgview" Height="150px" Width="200px" src="Cat_inventory/cat_food1.png" />
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <hr>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-3">
                     <label>Food ID</label>
                     <div class="form-group">
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Food ID"></asp:TextBox>
                           <asp:Button CssClass="form-control btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="goFood" />
                        </div>
                     </div>
                  </div>
                  <div class="col-md-9">
                     <label>Food Name</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Food Name"></asp:TextBox>
                     </div>
                  </div>
               </div>

               <div class="row">
                   <div class="col-md-4">
                     <label>Weight</label>
                       <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Weight" TextMode="Number"></asp:TextBox>
                       </div>
                   </div>
                  <div class="col-md-4">
                     <label>Price</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Price" TextMode="Number"></asp:TextBox>
                     </div>
                  </div>
                  
               </div>

               <div class="row">
                  <div class="col-12">
                     <label>Description</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-4">
                      <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="addFood" />
                  </div>
                  <div class="col-4">
                      <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="updateFood" />
                  </div>
                  <div class="col-4">
                      <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="deleteFood" />
                  </div>
               </div>
            </div>
         </div>
         <a href="homepage.aspx"><< Back to Home</a><br>
         <br>
      </div>

      <div class="col-md-7">
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col">
                     <center>
                        <h4>Food Inventory List</h4>
                     </center>
                  </div>
               </div>



               <div class="row">
                  <div class="col">
                     <hr>
                  </div>
               </div>


               <div class="row">
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString4 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [food_Inventory]"></asp:SqlDataSource>
                  
                   <div class="col">
                       <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">

                                                        <Columns>
                                <asp:BoundField DataField="food_id" HeaderText="food_id" ReadOnly="true" SortExpression="food_id" />


                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-7">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("food_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <span>Edition</span>
                                                            <asp:Label ID="label2" runat="server" Font-Bold="True" Text='<%# Eval("food_weight") %>'></asp:Label>
                                                            &nbsp;

                                                       
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            Description -
                                                   <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("food_description") %>'></asp:Label>
                                                        </div>
                                                    </div>



                                                </div>
                                                     <div class="col-lg-5">
                                                         <asp:Image CssClass= "img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("food_img") %>' />
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>


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
