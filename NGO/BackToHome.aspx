<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BackToHome.aspx.cs" Inherits="NGO_BackToHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
   

        <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 530px;
        }

        p {
            padding-left: 80px;
        }

        Container {
            margin-left: 80%;
            margin-right: 80%;
        }

        body {
            margin-left: 10px;
            margin-right:10px;
            background-color: #d9d9d9;
        }

       
        .auto-style2 {
            height: 507px;
        }
        .navbar-custom{
            height:25px;
             border-radius:10px;
        }
        .table-custom{
            height:480px;
        }
        .box{
           
            transition: transform 0.8s;
        }
        .box:hover{
            transform:scale(1.2);
            }
        .box1{
            color:white;
        }
        .box1:hover{
            
            background-color:grey;
            }
        .auto-style3 {
            width: 300px;
        }
        .auto-style13 {
            width: 100%;
            color: #212529;
            border-collapse: collapse;
            height: 208px;
            margin-bottom: 1rem;
        }
       
        .auto-style14 {
            height: 262px;
        }
        .auto-style16 {
            height: 162px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                    
                 <div style="background-color: white">
            <center>
                <asp:Image ID="Image1" runat="server" Height="81px" Width="128px" src="../Images/logo.png" ImageAlign="Middle" Style="text-align: center;padding-left:20px" />
            </center>
           <table class="table">
               <tr>
                        <td style="background-color:mediumorchid;height:4pt;border-radius:20px">

                       <nav class="navbar navbar-expand-lg navbar-light bg-mediumorchid  navbar-custom ">
                           <a class="navbar-brand" href="#" style="color:purple; font-family: 'Arial Black'; font-size: 20px; font-weight: bold;">Donate Old Items</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="vbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active" style="padding-left:5px">
        <a class="nav-link" href="#" style="color:white; font-weight: bold;">HOME<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link box1" href="#AboutUs" style="color:white">About Us</a>
      </li>
        <li class="nav-item">
        <a class="nav-link box1" href="#Donate" style="color:white">Donate</a>
      </li>
         </li>
        <li class="nav-item">
        <a class="nav-link box1" href="#Howitworks" style="color:white">How It Works</a>
      </li>
        <li class="nav-item">
        <a class="nav-link box1" href="NGODefault.aspx" style="color:white">Back To NGO</a>
      </li>
      </ul>
  </div>
</nav>
                
                        </td>
                 </tr>
                    <tr>
                        <td>
                            <table cellpadding=".15rem" cellspacing="0" class="table table-custom">
                                <tr>
                                    <td style="width: 200px; height: 560px; background-color:mediumorchid">
                                         <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <div style="padding-left:30px">
                                            <button type="button" class="btn btn-light box" >Search NGO</button>
                                        </div>
                                        <br />
                                        <div style="padding-left:12px">
                                            <button type="button" class="btn btn-dark box">View NGO Needs</button>
                                        </div>
                                    </td>
                                    <td style="padding:.15rem">
                                        <table cellpadding="0" cellspacing="0" class="auto-style1">
                                            <tr>
                                                <td class="auto-style2">
                                                    <div id="carouselExampleControls" class="carousel slide carousel-fade" data-ride="carousel" data-interval="1500">
                                                    <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                       <img src="../Images/donate.jpg"  class="d-block w-100" width="730" height="444"/>
                                                    </div>
                                                  <div class="carousel-item">
                                                           <img src="../Images/CoronaMedicine.jpg" class="d-block w-100" width="730" height="444"/>
                                                  </div>
                                                  <div class="carousel-item">
                                                     <img src="../Images/Donate-Old-Books.jpeg"  class="d-block w-100" width="730" height="444"/>
                                                  </div>
                                                  <div class="carousel-item">
                                                       <img src="../Images/DonateBicycle.jpg" class="d-block w-100" width="730" height="444"/>
                                                  </div>
                                                   <div class="carousel-item">
                                                       <img src="../Images/donateItems.jpg" class="d-block w-100" width="730" height="444"/>
                                                   </div>
                                                   <div class="carousel-item">
                                                    <img src="../Images/donateschoolsupplies.jpg"  class="d-block w-100" width="730" height="444"/>
                                                   </div>   
                                                   <div class="carousel-item">
                                                       <img src="../Images/EducationalBag.jpg" class="d-block w-100" width="730" height="444"/>
                                                   </div>
                                                   <div class="carousel-item">
                                                       <img src="../Images/food-donations.jpg" class="d-block w-100" width="730" height="444"/>
                                                   </div>
                                                   <div class="carousel-item">
                                                       <img src="../Images/Footware.png" class="d-block w-100" width="730" height="444"/>
                                                   </div> 
                                                   <div class="carousel-item">
                                                      <img src="../Images/GroceryItems.jpg"  class="d-block w-100" width="730" height="444"/>
                                                   </div> 
                                                 <div class="carousel-item">
                                                      <img src="../Images/HospitalAndAirBeds.jpg" class="d-block w-100" width="730" height="444"/>
                                                   </div>
                                                  <div class="carousel-item">
                                                       <img src="../Images/LaptopAndSmartphones.jpg" class="d-block w-100" width="730" height="444"/>
                                                   </div>
                                                   <div class="carousel-item">
                                                       "<img src="../Images/Lunchboxes.jpg" class="d-block w-100" width="730" height="444"/>
                                                   </div>
                                                   <div class="carousel-item">
                                                       <img src="../Images/Medicine.png"  class="d-block w-100" width="730" height="444"/>
                                                   </div> 
                                                   <div class="carousel-item">
                                                       <img src="../Images/Raincoats.jpg"  class="d-block w-100" width="730" height="444"/>
                                                   </div> 
                                                    <div class="carousel-item">
                                                       <img src="../Images/school-kit-donations.png" class="d-block w-100" width="730" height="444"/>
                                                   </div>
                                                    <div class="carousel-item">
                                                       <img src="../Images/uniformreuse.jpg"  class="d-block w-100" width="730" height="444"/>
                                                   </div> 
                                                   <div class="carousel-item">
                                                       <img src="../Images/WalkingStick.jpg" class="d-block w-100" width="730" height="444"/>
                                                   </div>
                                               </div>
                                     <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                    </a>
                                      <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                         <span class="sr-only">Next</span>
                                           </a>
                                            </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            <hr />
            <section id="Howitworks">
                <center>
                    <label style="font-weight: bold; font-family: 'DejaVu Serif'; font-size: 40px; text-decoration: underline;" >How Tathaastu Works?</label>
                </center>
                <table class="auto-style13">
               <tr>
                    <td class="auto-style3">
                         <div class="jumbotron" style="width:250px;height:526px">
                             <center>
                             <img src="../Images/Authenticate.jpg"  style="width:170px;height:170px"/>
                              </center>
                                 <center>
                                   <h4 style="font-weight: bold" >  Authenticate</h4>
                                 </center>
                               <hr class="my-4">Every member NGO is duly verified before it is on-boarded. These NGOs now list their needs. Donor can search the NGOs as per the category and need.</hr>
                          </div>
                    </td>
                    <td class="auto-style3">
                        <div class="jumbotron" style="width:250px;height:526px">
                             <center>
                             <img src="../Images/donateinfo.jpg" style="width:170px;height:170px"/>
                              </center>
                                 <center>
                                   <h4 style="font-weight: bold" >  Donate</h4>
                                 </center>
                               <hr class="my-4">You can choose to donate as per the NGO needs, or simply make a general donation. </hr>
                    </td>
                    <td class="auto-style3" >
                             <div class="jumbotron" style="width:250px;height:526px">
                               <center>
                                     <img src="../Images/location.jpg"   style="width:170px;height:170px"/>
                               </center>
                                 <center>
                                   <h4 style="font-weight: bold" >Co-Ordinate</h4>
                                 </center>
                               <hr class="my-4">The NGOs then collect the Selected items from the location decided by the mutual convenience</hr>
                                 
                          </div>
                    </td>
                    <td class="auto-style3">
                            <div class="jumbotron" style="width:250px;height:526px">
                                <center>
                                <img src="../Images/acknowledge.jpg"  style="width:170px;height:170px"/>
                                </center>
                                 <center>
                                   <h4 style="font-weight: bold" >Acknowledge</h4>
                                 </center>
                               <hr class="my-4">Donors are kept informed of the difference made by the donations. Now you may spread the good word on social media and invite friends to join the movement. </hr>
                          </div>
                    </td>
                </tr>
            </table>
                     <hr />
                        <table>
            </section>
              
                <tr>
                    <td class="auto-style14">
                        <section id="AboutUs">
                            <center>
                         <h6 style="font-size: 22pt; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; text-align: center; color: #68217A; font-weight: bold;" class="margintop">Share your happiness with Tathaastu!</h6>
                     </center>
                            <p style="font-size: 22px; text-align: match-parent; padding-right: 120px; padding-left: 120px">
                                Tathastu is a Sanskrit word combining the words ‘Tat’(so) + ‘Astu’ (happen or be it) meaning, happens as per your wish.
                              The purpose behind naming our portal “Tathaastu” is that, we want to make sure that the people receiving these Products,
                               do what they wish to and make their dream come true.  
                            </p>
                            <p style="font-size: 22px; padding-right: 120px; padding-left: 120px">
                                The main motive for developing “Tathaastu” 
                       is to promote welfare of poverty-striken and underprivileged people 
                       or to help those most in need. “Tathaastu” will work just like another
                       classified portals but the only difference is that this will not be a
                       Profit-Making portal.
                            </p>
                        </section>
                    </td>
                </tr>
                  <tr>
                     <td class="auto-style16">
                    <blockquote style="padding-top: 30px">
                        <p style="font-size: x-large; font-style: italic; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;padding-right: 120px; padding-left: 120px" class="text-left">
                            Life is filled with treasures, if you're a lucky one.
Be grateful and be humble, and share them with someone.
                        </p>
                        <footer style="padding-right: 120px; padding-left: 120px">-Julie Hebert <cite title="Sharing Quotes"></cite></footer>
                    </blockquote>
                </td>
                </tr>
           </table>
           </div>     
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
