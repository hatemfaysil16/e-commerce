@extends('admin.admin_master')
@section('admin')
 

  
  
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
                         

<form method="POST" action="{{route('category.update',$category->id)}}">
    @csrf

    <input type="hidden" value="{{$category->id}}" name="id">


                    <div class="form-group">
                        <h5> category Name English <span class="text-danger">*</span></h5>
                        <div class="controls">
                        <input type="text"  name="category_name_en" value="{{$category->category_name_en}}"
                        class="form-control" required="" > 
                        @error('category_name_en')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    
                    
                <div class="form-group">
                    <h5> category Name Hindi <span class="text-danger">*</span></h5>
                    <div class="controls">
                    <input type="text" name="category_name_hin" value="{{$category->category_name_hin}}"
                    class="form-control" required="" >
                    @error('category_name_hin')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>

                <div class="form-group">
                  <h5> category icon <span class="text-danger">*</span></h5>
                  <div class="controls">
                  <input type="text" name="category_icon" value="{{$category->category_icon	}}"
                  class="form-control" required="" >
                  @error('category_icon	')
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

