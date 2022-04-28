<x-app-layout>

  
</x-app-layout>

<!DOCTYPE html>
<html lang="en">
  <head>
      <base href="/public">
      
    @include("admin.admincss")
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
    @include("admin.navbar")

    <div style="position: relative; top:60px; right:-150px;">
        <form action="{{ url('/update',$data->id) }}" method="post" enctype="multipart/form-data">
            @csrf
           
            
            <div>
               <label>Title</label>
               <input type="text" name="title" value="{{ $data->title }}" required>
           </div>
           <div>
               <label>Price</label>
               <input type="number" name="price" value="{{ $data->price }}" required>
           </div>
           <div>
               
               <img height="200" width="200" src="foodimage/{{ $data->image }}" hidden >
           </div>

           <div>
            <label>New Image</label>
            <input type="file" name="image" required>
        </div>
           <div>
               <label>Description</label>
               <input type="text" name="description" value="{{ $data->description }}" required>
            </div>
               <div>
                   <input style="color:black;" type="submit" value="Save">
               </div>
           </div>
            
        </form>
       </div>
    </div>
    @include("admin.adminscript")
   
  </body>
</html>