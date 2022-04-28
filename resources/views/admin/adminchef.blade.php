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

<div style="position: relative; top:60px; right:-150px;">
   <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Add New Chef
</button>
  
  <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Chef</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="{{ url('/uploadchef') }}" method="post" enctype="multipart/form-data">
          @csrf
          <div> 
            <label>Name</label>
            <input type="text" style="color: blue;" name="name" id="" placeholder="Enter name">
          </div>
          <div> 
            <label>Speciality</label>
            <input type="text" style="color: blue;" name="speciality" id="" placeholder="Enter the speciality">
          </div>
          <div> 
            <label>Image</label>
            <input type="file"  name="image" id="" required>
          </div>
          <div>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <input type="submit" value="Save">
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
          <th style="padding: 30px">Name</th>
          <th style="padding: 30px">Speciality</th>
          <th style="padding: 30px">Image</th>
          <th style="padding: 30px">Action</th>
      </tr>
    </thead>
       @foreach ($data as $data)
       <tbody>
      <tr align="center" style="color:black;">
          <td>{{ $data->name }}</td>
          <td>{{ $data->speciality }}</td>
          <td><img height="100" width="100" src="chefimage/{{ $data->image }}" ></td>
          <td><a class="btn btn-warning" href="{{ url('/deletechef',$data->id) }}">Delete</a>&nbsp<a class="btn btn-primary" href="{{ url('/updatechef',$data->id) }}">Edit</a></td> 
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