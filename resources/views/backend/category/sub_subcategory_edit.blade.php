@extends('admin.admin_master')
@section('admin')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



  <!-- Content Wrapper. Contains page content -->
	  <div class="container-full">
		<!-- Content Header (Page header) -->



		<!-- Main content -->
		<section class="content">
		  <div class="row">


			<div class="col-12">

                <div class="box">
                   <div class="box-header with-border">
                     <h3 class="box-title">Edit Brand</h3>
                   </div>
                   <!-- /.box-header -->
                   <div class="box-body">
                       <div class="table-responsive">


<form method="POST" action="{{route('SubSubcategory.update',$SubSubcategory->id)}}">
    @csrf

    <input type="hidden" value="{{$SubSubcategory->id}}" name="id">



////////////select-start/////////////////
  <div class="form-group">
    <h5>  Category Select <span class="text-danger">*</span></h5>
    <div class="controls">
        <select name="category_id"  class="form-control" aria-invalid="false">
            <option value="" selected="" disabled="">Select Category</option>
            @foreach ($category as $item)
            <option value="{{$item->id}}"{{$item->id == $SubSubcategory->category_id?'selected':''}}>{{$item->category_name_en}}</option>
            @endforeach
        </select>
        @error('category_id')
        <span class="text-danger">{{$message}}</span>
        @enderror
    <div class="help-block"></div></div>
</div>
////////////select-End/////////////////
////////////select-start/////////////////
<div class="form-group">
    <h5>SubCategory Select<span class="text-danger">*</span></h5>
    <div class="controls">
        <select name="subcategory_id"  class="form-control" aria-invalid="false">
            <option value="" selected="" disabled="">Select subCategory</option>

@foreach ($subcategories as $subsub)

<option value="{{$subsub->id}}"
{{$subsub->id == $SubSubcategory->subcategory_id ? 'selected':''}}>
{{$subsub->subcategory_name_en}}</option>
@endforeach

        </select>
        @error('subcategory_id')
        <span class="text-danger">{{$message}}</span>
        @enderror
    <div class="help-block"></div></div>
</div>
////////////select-End/////////////////


      <div class="form-group">
          <h5> Sub - SubCategory English <span class="text-danger">*</span></h5>
          <div class="controls">
          <input type="text" name="SubSubcategory_name_en"
          value="{{$SubSubcategory->SubSubcategory_name_en}}"
          class="form-control" required="" >
          @error('SubSubcategory_name_en')
          <span class="text-danger">{{$message}}</span>
          @enderror
      </div>



      <div class="form-group">
          <h5> Sub - SubCategory Hindi <span class="text-danger">*</span></h5>
          <div class="controls">
          <input type="text" name="SubSubcategory_name_hin"
           value="{{$SubSubcategory->SubSubcategory_name_hin}}"
          class="form-control" required="" >
          @error('SubSubcategory_name_hin')
          <span class="text-danger">{{$message}}</span>
          @enderror
      </div>





        </div>







    <div class="text-xs-right">
    <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Update" name="Update">
    </div>
</form>


                       </div>
                   </div>
                   <!-- /.box-body -->
                 </div>
                 <!-- /.box -->
            </div>




			<!-- /.col -->
		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->

	  </div>

        <script type="text/javascript">
  $(document).ready(function() {
    $('select[name="category_id"]').on('change', function(){
        var category_id = $(this).val();
        if(category_id) {
            $.ajax({
                url: "{{  url('/category/subcategory/ajax') }}/"+category_id,
                type:"GET",
                dataType:"json",
                success:function(data) {
                   var d =$('select[name="subcategory_id"]').empty();
                      $.each(data, function(key, value){
                          $('select[name="subcategory_id"]').append('<option value="'+ value.id +'">' + value.subcategory_name_en + '</option>');
                      });
                },
            });
        } else {
            alert('danger');
        }
    });
});
</script>
@endsection

