<!DOCTYPE html>
<html>
<head>

<title>Halaman | Perpus Matematika </title>

  <title>Auto Complete Search Using Jquery UI - Tutsmake.com</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>


<div class="container">
    <div class="row">
        <div class="col-12"><h2>Laravel 5.7 Auto Complete Search Using Jquery UI</h2></div>
        <div class="col-12">
            <div id="custom-search-input">
                <div class="input-group">
                    <input id="search" name="search" type="text" class="form-control" placeholder="Search" />
                </div>
            </div>
    </div>
</div>

<script src="{{asset('public/js/1124.js')}}"></script>
<script src="{{asset('public/js/ui1121.js')}}"></script>
<script>
 $(document).ready(function() {
    $( "#search" ).autocomplete({

        source: function(request, response) {
            $.ajax({
            url: "{{url('autocomplete')}}",
            data: {
                    term : request.term
             },
            dataType: "json",
            success: function(data){
               var resp = $.map(data,function(obj){
                    //console.log(obj.city_name);
                    return obj.Judul;
               }); 

               response(resp);
            }
        });
    },
    minLength: 1
 });
});

</script> 



</body>
</html>