<!DOCTYPE html>
<html lang="en">

  <head>
<base href="/public">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title> Restaurant project</title>

<!--
    
TemplateMo 558 Klassy Cafe

https://templatemo.com/tm-558-klassy-cafe

-->
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-klassy-cafe.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">

    <link rel="stylesheet" href="assets/css/lightbox.css">
<style>
    nav{
        background:orangered;
        
    }
    a {
    color: #f7f7f7 !important;
    text-decoration: none !important;
    
}
th{
    background: black;
    color: #fff;
    padding-top: 2px;
}
</style>
    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">

                        <ul class="nav">
                            
                           	

                            <li class="scroll-to-section"><a href="#reservation">
                                @auth
                                <a href="{{ url('/showcart',Auth::user()->id) }}">
                                Cart{{ $count }}
                            </a>
                                @endauth
                                @guest
                                Cart[0]   
                                @endguest
                            </li> 
                            <li class="scroll-to-section">

                                @if (Route::has('login'))
                                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                                    @auth
                                      <li class="right"><x-app-layout></x-app-layout></li>
                                    @else
                                    <li><a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Log in</a></li>
                
                                        @if (Route::has('register'))
                                        <li><a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a></li>
                                        @endif
                                    @endauth
                                </div>
                            @endif

                            </li>
                        </ul>        
                        
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
    <div id="top">
        <div style="position: relative; top:60px; right:-60px;">
            <table bgcolor="black" id="table_id" class="display">
              <thead>
                  <tr>
                      <th style="padding: 30px">Name</th>
                      <th style="padding: 30px">Email</th>
                      <th style="padding: 30px">Phone Number</th>
                      <th style="padding: 30px">Guest Number</th>
                      <th style="padding: 30px">Date</th>
                      <th style="padding: 30px">Time</th>
                      <th style="padding: 30px">Message</th>
                      <th style="padding: 30px">Status</th>
                  </tr>
                </thead>
                  @foreach ($data as $data)
                  <tbody >
                  <tr align="center" style="color:black;">
                      <td>{{$data->name }}</td>
                      <td>{{$data->email }}</td>
                      <td>{{$data->phone }}</td>
                      <td>{{$data->guest }}</td>
                      <td>{{$data->date }}</td>
                      <td>{{$data->time }}</td>
                      <td>{{$data->message }}</td>
                      <td>{{$data->status }}</td>
      
                  </tr>
              </tbody>
                  @endforeach
              </table>
          </div>
        <div align="center" style="padding: 10px;">
            <button class="btn btn-primary" type="button" id="order">Order Now</button>
            <a href="{{ url('/goBack') }}" class="btn btn-secondary">Go back</a>
        </div>
<div id="appear" align="center" style="padding: 10px; display:none;">
    <div style="padding: 10px;">
        <label>Name</label>
        <input type="text" name="name" placeholder="Enter name">
        </div>
        <div style="padding: 10px;">
            <label>Phone</label>
            <input type="number" name="phone" placeholder="Enter phone">
            </div>
        <div style="padding: 10px;">
            <label>Address</label>
            <input type="text" name="address" placeholder="Enter address">
        </div>
        <div style="padding: 10px;">
            <input class="btn btn-success" type="submit" value="Order confirm">
            <button  id="close" type="button"  class="btn btn-secondary">close</button>
        </div>
</div>
        </form >
  
    
    <script type="text/javascript">
         $("#order").click(
             function()
             {
                 $("#appear").show();
             }
         );
         $("#close").click(
             function()
             {
                 $("#appear").hide();
             }
         );
         $(document).ready( function () {
      $('#table_id').DataTable();
  } );
    </script>
    <!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/accordions.js"></script>
    <script src="assets/js/datepicker.js"></script>
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script> 
    <script src="assets/js/slick.js"></script> 
    <script src="assets/js/lightbox.js"></script> 
    <script src="assets/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>

  </body>
</html>