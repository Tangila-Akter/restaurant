<x-app-layout>

  
</x-app-layout>

<!DOCTYPE html>
<html lang="en">
  <head>
      <base href="/public">  
<style>
  body{
    background: #191c24;
    color: white;
  }
  a:link {
    color: white;
  text-decoration: none;
}
</style>
  </head>
  <body>
    <div class="container-scroller">

      <div class="main-panel">
        <div class="content-wrapper">
    @include("admin.navbar")

    <div style="position: relative; top:60px; right:-150px;">
        <form action="{{ url('/updatefoodchef',$data->id) }}" method="post" enctype="multipart/form-data">
            @csrf
           
            
            <div>
               <label>Name</label>
               <input type="text" name="name" value="{{ $data->name }}" required>
           </div>
           <div>
               <label>Speciality</label>
               <input type="text" name="speciality" value="{{ $data->speciality }}" required>
           </div>
           <div>
               
               <img height="200" width="200" src="chefimage/{{ $data->image }}" hidden>
           </div>

           <div>
            <label>New Image</label>
            <input type="file" name="image" required>
        </div>

               <div>
                   <input style="color:black;" type="submit" onclick="myFunction()" value="Save">

               </div>
               
           </div>
            
        </form>
       </div>
    </div>
    @include("admin.adminscript")
    <script>
      function myFunction() {
        alert("update successfully");
      }
      </script>
  </body>
</html>
