<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Skeletons_com._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<%--        <section class="row" aria-labelledby="aspnetTitle">--%>
            
        <!--Dark bar Welcome to Skeletons.com-->
        <section class="hidden">
            <div class="bg-dark text-secondary px-4 py-5 text-center">
                <div class="py-5">
                    <h1 class="display-5 fw-bold text-white">
                        Welcome to Skeletons.com
                    </h1>
                    <div class="col-lg-6 mx-auto">
                        <p class="fs-5 mb-4">We are you're on stop skeleton shop!</p>
                        <p class="fs-5 mb-4">Also, home of the world fammous Skeleton API</p>
                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                            <label>Join the other 8 billion members who already have skeletons</label>
                            <button type="button"
                                    class="m-1 btn btn-outline-info btn-lg btn-md btn-sm px-4 fw-bold align-center">
                                Sign Up!
                            </button>

                            <button type="button"
                                    class="m-1 btn btn-danger fw-bolder font-italic text-dark btn-outline-info btn-md btn-sm px-4 fw-bold align-center">
                                Already a Member!
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Light Bar Buy a Skeleton Section-->
        <section class="hidden">
            <article>
                <div class="container my-5">
                    <div class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg ">
                        <div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
                            <h1 class="display-4 fw-bold lh-1">
                                Buy A Skeleton
                            </h1>
                            <p class="lead">
                                Shop from our prime selection of skeletons. You'll never have a bone to pick with our
                                bones.
                                Like your new skeleton, or you money back.
                            </p>
                            <div class="d-grid gap-2 d-md-flex justify-content-md-center mb-4 mb-lg-3">
                                <button type="button"
                                        class="text-center btn btn-primary btn-lg px-4 me-md-2 fw-bold">
                                    Buy
                                </button>
                                <button type="button"
                                        class="btn bg-light btn-outline-secondary btn-lg px-4 ml-2">
                                    Lease
                                </button>
                            </div>
                        </div>
                        <div class="col-lg-4 offset-lg-1 p-1 shadow-lg">
                            <video class="video ml-4"
                                   playsinline="playsinline"
                                   autoplay="autoplay"
                                   muted="muted"
                                   loop="loop">
                                <source src="Assets/videos/trex.mp4"
                                        type="video/mp4">
                            </video>

                        </div>
                    </div>
                </div>
            </article>
        </section>

        <!-- Dark Section, Gaurantee Section, buy and rent 2nd attept to sell a skeleton -->
        <section class="hidden">
            <div class="bg-dark text-secondary px-4 py-5 text-center">
                <div class="py-5">
                    <h1 class="display-5 fw-bold text-white">
                        Our Gaurantee
                    </h1>
                    <div class="col-lg-6 mx-auto">
                        <p class="fs-5 mb-4">You'll be happy with your transaction or your money/skeleton back.</p>
                        <p class="fs-5 mb-4">
                            Fine Print: We reserve the right when returning your skeleton, to return
                            you a skeleton of equal or greater value.
                        </p>
                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                            <button type="button"
                                    class="m-1 btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold">
                                Buy
                            </button>
                            <button type="button"
                                    class="m-1 btn btn-outline-light btn-lg px-4">
                                Rent
                            </button>
                            <button type="button"
                                    class="m-1 btn btn-outline-light btn-lg px-4 fw-bold btn-outline-success">
                                Policy Page
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- �	Images (optimized for web sites) -->
        <!-- �	Lists and tables/grids. -->
        <!-- Ligzt Table to show the most recent, or the trending purchases of skeletons on skeletons.com-->
        <section class="hidden">
            <div class="container my-5">
                <div class="row p-4 pb-0 pe-lg-0 pt-lg-5 rounded-3 border shadow-lg justify-content-center">
                    <div class="col-auto">
                        <h1 class="display-4 fw-bold font-italic fw lh-1">
                            Trending Sales!
                        </h1>
                        <table class="table table-responsive table-bordered">
                            <thead class="table-dark">
                                <tr>
                                    <th class="table-light shadow-lg"
                                        scope="col">
                                        <img src="Assets/svg/skull_logo.svg" />
                                    </th>
                                    <th scope="col">Type</th>
                                    <th scope="col">Quality</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">User</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>
                                        bat
                                    </td>
                                    <td>
                                        Good
                                    </td>
                                    <td>
                                        100
                                    </td>
                                    <td>
                                        <div class="container-flex">
                                            <img src="Assets/svg/skeleton_bat.svg" />
                                        </div>
                                    </td>
                                    <td>
                                        Liono37
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>
                                        ape
                                    </td>
                                    <td>
                                        fair
                                    </td>
                                    <td>
                                        1000
                                    </td>
                                    <td>
                                        <div class="container-flex">
                                            <img src="Assets/svg/skeleton_ape.svg" />
                                        </div>
                                    </td>
                                    <td>
                                        MarioMario79
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>
                                        brontosaurus
                                    </td>
                                    <td>
                                        poor
                                    </td>
                                    <td>
                                        10
                                    </td>
                                    <td>
                                        <div class="container-flex">
                                            <img src="Assets/svg/skeleton_brontosaurus.svg" />
                                        </div>

                                    </td>
                                    <td>
                                        SkyWalker9000
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <!-- �	Your website should have a distinctive, yet consistent style. -->
        <!-- I want to see evidence that you are experimenting with different elements and style attributes -->
        <!--Dark bar Sell section -->
        <article class="hidden">
            <div class="bg-dark text-secondary px-4 py-5 text-center">
                <div class="py-5">
                    <h1 class="display-5 fw-bold text-white">
                        Have to Many Skeletons Already?
                    </h1>
                    <div class="col-lg-6 mx-auto">
                        <p class="fs-5 mb-4">
                            We are also the Internet's number one platform to sell, or lease your
                            skeleton!
                        </p>
                        <p class="fs-5 mb-4">
                            Join our community of billions already happily selling, or leasing their
                            extra skeletons, and retiring early on that extra cash.
                        </p>
                        <p class="fs-5 mb-4">
                            Check out our community and FAQ sections, and learn how to monitize your
                            skeleton.
                        </p>
                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                            <button type="button"
                                    class="m-1 btn btn-outline-info btn-lg btn-md btn-sm px-4 fw-bold align-center">
                                Sign Up!
                            </button>

                            <button type="button"
                                    class="m-1 btn btn-outline-info btn-md btn-sm px-4 fw-bold align-center danger">
                                Already a Member!
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </article>
        <!-- �	Use of forms is not necessary or encouraged at this stage of the project. -->
        <!-- �	Must be viewable in a 1280 x 768 pixel resolution display. -->
        <!--Light Section, Sell Skeletons section -->
        <section class="hidden">
            <div class="container my-5">
                <div class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg justify-content-center text-center">
                    <div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
                        <h1 class="display-4 fw-bold lh-1">
                            Sell A Skeleton
                        </h1>
                        <p class="lead">
                            Are you currently the owner of a non monotized skeleton?
                            Do you have old skeletons laying around, wasting space?
                            Click and join millions who've already turned there
                            useless bones into cash. The best you can do is pay!

                        </p>
                        <div class="d-grid gap-2 d-md-flex mb-4 mb-lg-3 justify-content-center">
                            <button type="button"
                                    class="btn btn-primary btn-lg px-4 me-md-2 fw-bold">
                                Sell
                            </button>
                            <button type="button"
                                    class="btn bg-light btn-outline-secondary btn-lg px-4">
                                Lease
                            </button>
                        </div>
                    </div>
                    <div class="col-4 offset-lg-1 p-1 m-2 overflow-hidden shadow-lg">
                        <img class="rounded-sm-3 rounded-md-3 rounded-lg-3"
                             src="Assets/svg/skeleton_eagle.svg"
                             alt=""
                             width="auto">
                    </div>
                    <div class="col-4 offset-lg-1 p-1 m-2  overflow-hidden shadow-lg ml-4">
                        <img class="rounded-sm-3 rounded-md-3 rounded-lg-3"
                             src="Assets/svg/skeleton_cat_ball.svg"
                             alt=""
                             width="auto">
                    </div>
                    <div class="col-4 offset-lg-1 p-1 m-2 overflow-hidden shadow-lg mt-2">
                        <img class="rounded-sm-3 rounded-md-3 rounded-lg-3"
                             src="Assets/svg/skeleton_woolly-mammoth.svg"
                             alt=""
                             width="auto">
                    </div>
                </div>
            </div>
        </section>

        <!-- Dark Section, Developers ad, API section -->
        <article class="hidden">
            <div class="bg-dark text-secondary px-4 py-5 text-center">
                <div class="py-5">
                    <h1 class="display-5 fw-bold text-white">
                        Skeletons API
                    </h1>
                    <div class="col-lg-6 mx-auto">
                        <p class="fs-5 mb-4">
                            Want to incoperate or unriveld online support for skeleton related content
                        </p>
                        <p class="fs-5 mb-4">Free up to 1000 skeleton requests</p>
                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                            <button type="button"
                                    class="m-1 btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold align-center">
                                Devloper's Page
                            </button>
                            <button type="button"
                                    class="m-1 btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold align-center">
                                API Documentation
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </article>

        <style>
            .testimonial-logo {
                width: 200px;
                height: 200px;
                border-radius: 50%;
            }
        </style>
        <!--Testimonial, Light Section -->
        <section class="hidden">
            <div class="row text-center m-5">
          
                <div class="col-lg-4">
    <img src="Assets/images/monkey-man-showing-something.jpg"
         class="img-thumbnail testimonial-logo"
         alt="monkey"
         height="200"
         width="200"
         background-size="cover">
    <h2>
         Marc Foder
    </h2>
    <p>I only buy my skeletons from skeletons.com!</p>
    <div class="ratings">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-half"></i>

    </div>
    <p>
        <a class="btn btn-secondary"
           href="#">View Profile</a>
    </p>
</div><!-- /.col-lg-4 -->





                <div class="col-lg-4">
                    <img src="Assets/images/coalkin.jpg"
                         class="img-thumbnail testimonial-logo"
                         alt="ap"
                         height="200"
                         width="200"
                         background-size="cover">
                    <h2>
                        Heather Zeifert
                    </h2>
                    <p>With the skeletons API, my business is always up to date on the latest skeletons! Thanks Skeletons.com!</p>
                    <div class="ratings">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>

                    </div>
                    <p>
                        <a class="btn btn-secondary"
                           href="#">View Profile</a>
                    </p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img src="Assets/images/santa.jpg"
                         class="img-thumbnail testimonial-logo"
                         alt="home alone"
                         height="200"
                         width="300"
                         background-size="cover">

                    <h2>
                        William Friend
                    </h2>
                    <p>I made so much money from skeletons, I was able to retire!</p>
                    <div class="ratings">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>

                    </div>
                    <p>
                        <a class="btn btn-secondary"
                           href="#">View Profile</a>
                    </p>
                </div><!-- /.col-lg-4 -->
            </div>
        </section>
<%--            </section>--%>
      

</asp:Content>
