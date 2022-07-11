<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="Donatino_new.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                           <h4>Book Details</h4>
                           
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
                        
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Approx No. of Books"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="No. of carton/Boxes" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Total Weight    KG" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        
                        <div class="form-group">
                         
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select most suitable category" Value="select" />
                              <asp:ListItem Text="NCERT" Value="NCERT" />
                              <asp:ListItem Text="SCHOOh" Value="SCHOOL" />
                              <asp:ListItem Text="CHILDREN" Value="CHILDREN" />
                              <asp:ListItem Text="SPIRITUAL BOOKS" Value="SPIRITUAL BOOKS" />
                              <asp:ListItem Text="MEDICAL" Value="MEDICAL" />
                              <asp:ListItem Text="ENGINEERING" Value="ENGINEERING" />
                              
                           </asp:DropDownList>
                        </div>
                        </div>
                     </div>
                  </div>
                 
                  
                  
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                               <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Confirm Pickup" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <br><br>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
