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
  
      <div style="position: relative; top:60px; right:6px;">
        <table bgcolor="black" id="table_id" class="display">
          <thead>
              <tr>
                <th style="padding: 30px">Food Name</th>
                <th style="padding: 30px">Price</th>
                <th style="padding: 30px">Quantity</th>
                <th style="padding: 30px">Name</th>
                <th style="padding: 30px">Phone</th>
                <th style="padding: 30px">Address</th>
                <th style="padding: 30px">Total price</th>
              </tr>
            </thead>
              @foreach ($data as $data)
              <tbody >
              <tr align="center" style="color:black;">
                <td>{{$data->foodname }}</td>
                <td>{{$data->price }}৳</td>
                <td>{{$data->quality }}</td>
                <td>{{$data->name }}</td>
                <td>{{$data->phone }}</td>
                <td>{{$data->address }}</td>
                <td>{{$data->price * $data->quality}}৳</td>
      
  
              </tr>
          </tbody>
              @endforeach
          </table>
      </div>
      
  </div>
      @include("admin.adminscript")
     
    </body>
  </html>
  <script type="text/javascript">
    $(document).ready( function () {
        $('#table_id').DataTable();
    } );
    </script>
  