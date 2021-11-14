@extends('admin.admin_master')
@section('admin')
 

  
  
  <!-- Content Wrapper. Contains page content -->
	  <div class="container-full">
		<!-- Content Header (Page header) -->



		<!-- Main content -->
		<section class="content">
		  <div class="row">

			<div class="col-8">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">sub Category</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Category</th>
								<th>sub Category En</th>
								<th>sub Category Hin</th>
								<th>Action</th>
				
							</tr>
						</thead>
						<tbody>
                @foreach ($subcategory as $item)
                <tr>
    <td>{{$item['category']['category_name_en']}}</td>
    <td>{{$item->subcategory_name_en}}</td>
    <td>{{$item->subcategory_name_hin}}</td>
    <td width="30%">
        <a href="{{ route('subcategory.edit',$item->id) }}"  class="btn btn-info">Edit</a>
        <a href="{{ route('subcategory.delete',$item->id) }}" id="delete" class="btn btn-danger">Delete</a>
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
                     <h3 class="box-title">Add SubCategory</h3>
                   </div>
                   <!-- /.box-header -->
                   <div class="box-body">
                       <div class="table-responsive">
                         

<form method="POST" action="{{route('subcategory.store')}}" >
    @csrf

    @if(session('success'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
<strong>{{ session('success') }}</strong>  
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
@endif

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
                    <h5> SubCategory English <span class="text-danger">*</span></h5>
                    <div class="controls">
                    <input type="text" name="subcategory_name_en" 
                    class="form-control" required="" >
                    @error('subcategory_name_en')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>


                
                <div class="form-group">
                    <h5> SubCategory Hind <span class="text-danger">*</span></h5>
                    <div class="controls">
                    <input type="text" name="subcategory_name_hin" 
                    class="form-control" required="" >
                    @error('subcategory_name_hin')
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

@endsection

