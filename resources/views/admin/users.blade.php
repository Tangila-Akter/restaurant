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

<div style="position: relative; top:60px; right:-60px;">
  <table bgcolor="black" id="table_id" class="display">
    <thead>
        <tr>
            <th style="padding: 30px">Name</th>
            <th style="padding: 30px">Email</th>
            <th style="padding: 30px">Action</th>
        </tr>
     </thead>
        @foreach ($data as $data)
        <tbody >
          <tr align="center" style="color:black;">
            <td>{{$data->name }}</td>
            <td>{{$data->email }}</td>
            @if ($data->usertype=="0")     
            <td><a href="{{ url('/deleteuser',$data->id) }}">Delete</a></td>
            @else
            <td><a>Not Allowed</a></td>
            @endif
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