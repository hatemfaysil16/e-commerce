@extends('admin.admin_master')
@section('admin')
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  
  
  <!-- Content Wrapper. Contains page content -->
	  <div class="container-full">
		<!-- Content Header (Page header) -->



		<!-- Main content -->
		<section class="content">
		  <div class="row">

			<div class="col-8">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Sub->SubCategory</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Category</th>
								<th>SubCategory Name</th>
								<th>Sub->SubCategory English</th>
								<th>Sub->SubCategory Hind</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
                @foreach ($SubSubcategory as $item)
                <tr>

    <td>{{$item['category']['category_name_en']}}</td>
    <td>{{$item['Subcategory']['subcategory_name_en']}}</td>
    <td>{{$item->SubSubcategory_name_en}}</td>
    <td>{{$item->SubSubcategory_name_hin}}</td>
    <td width="30%">
        <a href="{{ route('SubSubcategory.edit',$item->id) }}"  class="btn btn-info">Edit</a>
        <a href="{{ route('SubSubcategory.delete',$item->id) }}" id="delete" class="btn btn-danger">Delete</a>
    </td>

  </tr>
                @endforeach
						</tbody>
					  </table>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box -->         
	    	</div>

            {{--  -------------------- Add category Page -------------------  --}}
			<div class="col-4">

                <div class="box">
                   <div class="box-header with-border">
                     <h3 class="box-title">Add sub-SubCategory</h3>
                   </div>
                   <!-- /.box-header -->
                   <div class="box-body">
                       <div class="table-responsive">
                         

<form method="POST" action="{{route('SubSubcategory.store')}}" >
    @csrf


    <div class="form-group">
        <h5>  Category Select <span class="text-danger">*</span></h5>
        <div class="controls">
            <select name="category_id"  class="form-control" aria-invalid="false">
                <option value="" selected="" disabled="">Select Category</option>
                @foreach ($category as $item)
                <option value="{{$item->id}}">{{$item->category_name_en}}</option>                                
                @endforeach
            </select>
            @error('category_id')
            <span class="text-danger">{{$message}}</span>
            @enderror
        <div class="help-block"></div></div>
    </div>

                <div class="form-group">
                    <h5>SubCategory Select<span class="text-danger">*</span></h5>
                    <div class="controls">
                        <select name="subcategory_id"  class="form-control" aria-invalid="false">
                            <option value="" selected="" disabled="">Select subCategory</option>


                        </select>
                        @error('subcategory_id')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    <div class="help-block"></div></div>
                </div>

                    
                <div class="form-group">
                    <h5> Sub - SubCategory English <span class="text-danger">*</span></h5>
                    <div class="controls">
                    <input type="text" name="SubSubcategory_name_en" 
                    class="form-control" required="" >
                    @error('SubSubcategory_name_en')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>


                
                <div class="form-group">
                    <h5> Sub - SubCategory Hindi <span class="text-danger">*</span></h5>
                    <div class="controls">
                    <input type="text" name="SubSubcategory_name_hin" 
                    class="form-control" required="" >
                    @error('SubSubcategory_name_hin')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                
        </div>







    <div class="text-xs-right">
    <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Add New" name="Update">
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




{{--  <form>

  <input class="email__inp" type="text" placeholder="بريدك الإلكترونى"/>

  <input class="btn__submit" type="submit" value="إشتراك" />

</form>  --}}
