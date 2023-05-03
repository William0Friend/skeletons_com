<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Skeletons_com.About" %>






<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <!-- Employee and jquery-->
 <script src="Assets/javascript/employees2JQuery.js">
 </script>



    <!--Mission statement JumboTron Light-->
    <article class="hidden">
        <div class="p-5 mb-4 bg-light rounded-3">
            <div class="container py-5">
                <h1 class="display-5 fw-bold text-center">Skeletons.com Mission Statement</h1>
                <p class="col-md-8 fs-4">
                    Skeletons.com mission is to empower independant business owners, dreamers,
                    non-technical creatives, or anyone who may want to buy or sell their skeleton, to connect with
                    developers, engineers, scientists, and programmers who also want to buy or sell their skeleton.
                <p class="font-weight-bold text-center">
                    Skeletons.com, your one stop skeleton shop!
                </p>
            </div>
        </div>
    </article>

    <!-- Our History Two Div, Pointing Skeleton  -->
    <section class="hidden">
        <div class="row align-items-md-stretch my-2 mx-1">
            <div class="col-md-6">
                <div class="h-100 p-5 text-white bg-dark rounded-3">
                    <h2>Our History</h2>
                    <p>
                        Our skeleton site, skeletons.com has been evolving with the internet for a long time. Our founder was Dr. Skele McSkeleton. The McSkeleton family fortune
                        was made through the completely legal sale of cadaviers to medical hospitals in the 1800s. is completely legitimate grandchildren took that completely
                        legal money and started this site, to further their grandfather's mission of buying and selling skeletons on behalf of our members. The grandson, Heuy, Dewey, and Louie,
                        McSkeleton are proud to carry on their grandfather's legacy. We have been and always will be your one stop skeleton shop.
                    </p>
                    <button id="btn-dark-square-our-history" class="btn btn-secondary myWiggle" type="button">View our online store!</button>

                </div>
            </div>
            <div class="col-md-6">
                <div class="h-100 p-5 bg-light border rounded-3">
                    <h2>Skele McSkeleton Self Portrait</h2>
                    <img src="Assets/svg/Cartoon-Skeleton.svg">

                    <p>
                        Don't go to far! Take another look at our skeleton collection! (to your left or above on mobile)
                    </p>

                </div>
            </div>
        </div>
    </section>

    <!--Three Div-->
    <!-- Two Div -->
    <!-- Dark Seperators for page uniformity -->
    <section class="hidden">
        <div class="bg-dark text-secondary px-4 py-5 text-center mx-1 my-1">
            <div class="py-5">

                <div class="col-lg-6 mx-auto">
                    <h3> Skeletons.com, Key Team Players</h3>
                    <img src="Assets/svg/Skeleton-Key-Silhouette.svg" />
                    <div class="d-grid gap-2 d-sm-flex justify-content-sm-center align-content-xxl-center">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- All xml goes here This is where I want to use jquery or javascript to get emplyess

          <!-- Employee and jquery-->
  <script src="Assets/javascript/employees2JQuery.js">
  </script>
    
    <!--from dropdowns by name, or department, etc, help here -->
    <!-- Light Bar Buy a Skeleton Section-->
    <section class="hidden">
        <article>
            <div class="container my-5">
                <div class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg ">
                    <div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
                        <h1 class="display-4 fw-bold lh-1">
                            Employee Roladex
                        </h1>
                        <p class="lead">
                            <h6>We have 5 key departments here at Skeletons.com</h6>
                            <ol>
                                <li>All - every skele currently listed</li>
                                <li>Buy - who head buying</li>
                                <li>Sell - who head selling</li>
                                <li>Dev - who head our technology</li>
                                <li>Others - those who do everything else</li>
                            </ol>
                            <h6>Use The Drop-Down to meet the team that makes it all possible...</h6>

                        </p>

                    </div>
                </div>
            </div>
        </article>
    </section>

        <!-- JQuery Selector attached to employees2JQuery.js -->
        <article>
            <div class="container">
                <div id="employees" class="container bg-light emp">
                    <!-- HTML dropdown to select category -->
                    <div class="container border-dark margin-5 align-center text-center bg-dark text-light">
                        <select class="form-select form-select-lg mb-3" id="category">
                            <option value="All">All</option>
                            <option value="Buy">Buy</option>
                            <option value="Sell">Sell</option>
                            <option value="Dev">Dev</option>
                            <option value="Others">Others</option>
                        </select>
                    </div>
                    <!-- HTML container for generated employee list -->
                    <div id="employee-list"></div>
                </div>
            </div>
        </article>


        <!-- Dark Seperators for page uniformity -->
        <section class="hidden">
            <div class="bg-dark text-secondary px-4 py-5 text-center mx-1 my-1">
                <div class="py-5">

                    <div class="col-lg-6 mx-auto">
                        <h3> Skeletons.com, Join the Team,</h3>
                        <img src="Assets/svg/Skeleton-Key-Silhouette.svg" />
                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center align-content-xxl-center">
                            <button class="bright-hover btn btn-danger text-white border-3 border-light myWiggle">Join Us</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
  
</asp:Content>
