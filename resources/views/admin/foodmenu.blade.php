
<x-app-layout>

  
</x-app-layout>



<!DOCTYPE html>
<html lang="en">
  <head>
    @include("admin.admincss") 
    <style>
      [type="search"] {
  outline-offset: -2px;
  -webkit-appearance: textfield;
  color: white !important;
}
    </style>
  </head>
  <body>
    <div class="container-scroller">
    @include("admin.navbar")

<div style="position: relative; top:60px; right:4px;">
    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Add Food Menu
  </button>
  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Food Menu</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form action="{{ url('/uploadfood') }}" method="post" enctype="multipart/form-data">
                @csrf
               
                
                <div>
                   <label>Title</label>
                   <input type="text" name="title" placeholder="Write a title" required>
               </div>
               <div>
                   <label>Price</label>
                   <input type="number" name="price" placeholder="Price" required>
               </div>
               <div>
                   <label>Image</label>
                   <input type="file" name="image" required>
               </div>
               <div>
                   <label>Description</label>
                   <input type="text" name="description" placeholder="Description" required>
                   <div>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                       <input style="color:black;" type="submit" value="Save">
                   </div>
               </div>
                
            </form>
        </div>
      </div>
    </div>
  </div>

<br>
<div>
    <table bgcolor="black" id="table_id" class="display">
        <thead>
            <tr>
                <th style="padding: 30px">Title</th>
                <th style="padding: 30px">Price</th>
                <th style="padding: 30px">Description</th>
                <th style="padding: 30px">Image</th>
                <th style="padding: 30px">Action</th>
            </tr>
        </thead>
       
         @foreach ($data as $data)
         <tbody style="padding: 7px;">
            <tr align="center" style="color:black;">
                <td>{{ $data->title }}</td>
                <td>{{ $data->price }}</td>
                <td>{{ $data->description }}</td>
                <td><img height="100" width="100" src="foodimage/{{ $data->image }}" ></td>
                <td><a class="btn btn-warning" href="{{ url('/deletemenu',$data->id) }}">Delete</a>&nbsp<a class="btn btn-primary" href="{{ url('/updateview',$data->id) }}">Edit</a></td> 
            </tr>
         </tbody>
        
        @endforeach
    </table>
</div>


    @include("admin.adminscript")
    </div>
  </body>
</html>
<script type="text/javascript">
    $(document).ready( function () {
        $('#table_id').DataTable();
    } );
    </script>