<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Skeletons_com.Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <!-- Form, like karket with cart-->
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <link type="text/css" href="Assets/css/form.css" rel="stylesheet">
    <script src="Assets/javascript/formSkeletonsXMLJquery.js"></script>

            <!--Mission statement JumboTron Dark-->
        <article class="hidden">
            <div class="p-5 mb-4 bg-dark rounded-3 text-white">
                <div class="container py-5">
                    <h1 class="display-5 fw-bold text-center">Skeletons.com Form Begin</h1>
                    <p class="col-md-8 fs-4 text-center">
                        <h3 class=" fw-bold text-center">Try our private open market feature</h3>
                        <h6 class=" text-center">Think of the items on a vitual self or table, shop to your liking, and add 
                            skeletons to your cart as you go. If you add an item to the cart, you will get an alert that the
                            tansaction has been "recognizized" by the server, then when you acknowledge that was correct, your
                            item is added to your cart. If you make a mistake, refresh and your cart will magically disappear.
                        </h6>
                        <h6 class="color-warning text-center"> cart at bottom of page, right above the footer.
                        </h6>
                        <img src="Assets/svg/Skeleton-Key-Silhouette.svg" />
                    <p class="text-center">
                        <label> Skeleform </label>
                    </p>

                </div>
            </div>
        </article>

       

        <!-- The JQuery Form -->
        <div id="myDiv" class="container m-4">
        </div>


     

        <!--  <article class="hidden ">-->
        <div class="hidden">
            <div class="p-5 m-4 bg-dark rounded-3 text-white row">
                <div class="border-1 border-thick border-light container py-5 ">
                     <h1 class="display-5 fw-bold text-center col-12">Your Current SKELECart</h1>
                     
                  <!--Skelecart-->
       <div id="shop" class="container text-dark border border-warning border-4" >
       
       </div>

             </div>
         </div>
        <div>


                  <!--Skelecart-->
       <div id="shop"">
       
       </div>


</asp:Content>
