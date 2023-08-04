<%@ Page Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" Inherits="WebApplication6.manageCourses" CodeFile="manageCourses.aspx.cs" %>

<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
       .footerlinks {
    color: #ffffff;
    text-decoration: none !important;
}

    .footerlinks:hover {
            color: #ffd800;
        }

    #footer1 {
        background: #762b00;
    }

    #footer2 {
        background: #531f00;
    }
   </style>
    
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div Id="add" runat="server" style="display:none;" class="card">
                <img id="back" onclick="location.href='manageCourses.aspx';" src="../Images/backIcon48.png" style="position:absolute; height:24px; width:24px; margin:10px;"/>
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Add A Course</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="64px" src="../Images/courseIcon.png" />
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
                        <label>Course ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="id" runat="server" placeholder="Course ID" ReadOnly="true"></asp:TextBox>
                        
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Course Name</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="cName" runat="server" placeholder="Course Name"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Course Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cDescription" runat="server" placeholder="Course Description"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Course Duration</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cDuration" runat="server" placeholder="eg: 6-9 Months"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>WYL1</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cWYL1" runat="server" placeholder="What will you learn?"></asp:TextBox>
                        </div>
                     </div>
                      </div>
                     <div class="row">
                     <div class="col-md-6">
                        <label>WYL2</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cWYL2" runat="server" placeholder="What will you learn?"></asp:TextBox>
                        </div>
                     </div>
                    </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>WYL3</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cWYL3" runat="server" placeholder="What will you learn?"></asp:TextBox>
                        </div>
                     </div>
                    </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>WYL4</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cWYL4" runat="server" placeholder="What will you learn?"></asp:TextBox>
                        </div>
                     </div>
                    </div>

                   <div class="row">
                     <div class="col-md-6">
                         <label>Upload Video</label>
                        <div class="form-group">
                          <asp:FileUpload ID="pictureUpload" runat="server"/>
                           
                        </div>
                     </div>
                       <div class="col-md-6">
                        <div class="form-group">
                            <asp:Image ID="image1" style="width:250px; height:250px" ImageUrl="imageurl1" runat="server" Visible="false"/>
                            <asp:Label ID="img" runat="server" Visible="True"></asp:Label>
                        </div>
                     </div>

                       <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="errMsg" runat="server" Visible="False"></asp:Label>
                        </div>
                     </div>
                    </div>
                   
                   
                  
                  <div class="row">
                    
                     <div class="col-6">
                        <asp:Button ID="addButton" class="btn btn-lg btn-block btn-success" OnClick="Button4_Click" runat="server" Text="Add"/>
                        
                     </div>

                  </div>
               </div>
            </div>

             <div class="card" id="edit" runat="server" >
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Manage Courses</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="64px" src="../Images/courseIcon.png" />
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
                        <label>Course ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Course ID"></asp:TextBox>
                        <asp:Button style="margin-top:5px" class="btn btn-primary" ID="Button1" Onclick="Button1_Click" runat="server" Text="Search" />
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Course Name</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Course Name"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Course Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Course Description"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Course Duration</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="eg: 6-9 Months"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>WYL1</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="What will you learn?"></asp:TextBox>
                        </div>
                     </div>
                      </div>
                     <div class="row">
                     <div class="col-md-6">
                        <label>WYL2</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="What will you learn?"></asp:TextBox>
                        </div>
                     </div>
                    </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>WYL3</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="What will you learn?"></asp:TextBox>
                        </div>
                     </div>
                    </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>WYL4</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="What will you learn?"></asp:TextBox>
                        </div>
                     </div>
                    </div>

                   <div class="row">
                     
                       <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="errMsg2" runat="server" Visible="False"></asp:Label>
                        </div>
                     </div>
                    </div>
                   
                    
                  
                  <div class="row">
                      <div class="col-6">
                     
                         <asp:Button ID="Button6" class="btn btn-lg btn-block btn-success" OnClick="Button3_Click" runat="server" Text="Edit" />
                     </div>

                     <div class="col-6">
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" Onclick="Button2_Click" runat="server" Text="Delete"/>
                     </div>


                  </div>
                    <div class="row">
                       
                        <asp:LinkButton  Style="margin-top:20px; margin-left:15px" class="nav-link" OnClick="addCourse_Click" ID="addCourse" runat="server">Want to add a new Course?</asp:LinkButton>

                    </div>


               </div>
            </div>
            
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Course List</h4>
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
                        <asp:GridView style="width:1100px;" class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
                                <asp:BoundField DataField="courseDescription" HeaderText="courseDescription" SortExpression="courseDescription" />
                                <asp:BoundField DataField="courseDuration" HeaderText="courseDuration" SortExpression="courseDuration" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                            </Columns>
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Courses]"></asp:SqlDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

</asp:Content>
