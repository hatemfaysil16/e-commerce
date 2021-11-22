<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\SubSubCategory;
use Illuminate\Http\Request;

class SubcategoryController extends Controller
{
    public function SubcategoryView()
    {
        $category = Category::orderBy('category_name_hin','ASC')->get();
    //  return   $a =  Subcategory::first()->category;die;
        $subcategory = Subcategory::latest()->get();        
        return view('backend.category.subcategory_view',compact('subcategory','category'));
    }

    public function subcategoryStore(Request $request)
    {

        $request->validate([
            'category_id' =>'required',
            'subcategory_name_en' =>'required',
            'subcategory_name_hin' =>'required',
        ],[
            'category_id.required' =>'Input subcategory English Name',
            'subcategory_name_en.required' =>'Input subcategory english Name', 
            'subcategory_name_hin.required' =>'Input subcategory  Hindi Name', 
        ]);

        Subcategory::insert([
            'category_id'=>$request->category_id,
            'subcategory_name_en'=>$request->subcategory_name_en,
            'subcategory_name_hin'=>$request->subcategory_name_hin,
            'subcategory_slug_en'=>strtolower(str_replace('','-',$request->subcategory_name_en)),
            'subcategory_slug_hin'=>str_replace('','-',$request->subcategory_name_hin),

        ]);

        $notification = array(
            'message'=>'category insert successfully',
            'alert-type'=>'success',
        );
        return redirect()->back()->with($notification);
    }

    public function subcategoryEdit($id)
    {
        $category = Category::orderBy('category_name_hin','ASC')->get();
        $subcategory = Subcategory::findOrFail($id);
        return view('backend.category.subcategory_edit',compact('subcategory','category'));
    }

    public function subcategoryUpdate(Request $request)
    {
        $cat_id = $request->id;

        Subcategory::find($cat_id)->update([
            'category_id'=>$request->category_id,
            'subcategory_name_en'=>$request->subcategory_name_en,
            'subcategory_name_hin'=>$request->subcategory_name_hin,
            'subcategory_slug_en'=>strtolower(str_replace('','-',$request->subcategory_name_en)),
            'subcategory_slug_hin'=>str_replace('','-',$request->subcategory_name_hin),
        ]);

        $notification = array(
            'message'=>'category update successfully',
            'alert-type'=>'success',
        );
        return redirect()->route('all.subcategory')->with($notification);
    }

    public function subcategoryDelete($id)
    {


        Subcategory::findOrFail($id)->delete();

        $notification = array(
            'message'=>'Category delete successfully',
            'alert-type'=>'warning',
        );
        return redirect()->route('all.subcategory')->with($notification);
    } 


    ///////////////////////// this for SUB->SUBCATEGORY ////////////////////////////

    public function SubSubcategoryView()
    {
        $category = Category::orderBy('category_name_en','ASC')->get();
        $SubSubcategory = SubSubCategory::latest()->get();        
        return view('backend.category.sub_subcategory_view',compact('SubSubcategory','category'));     
    }




    public function GetSubCategory($category_id)
    {

     	$subcat = SubCategory::where('category_id',$category_id)
        ->orderBy('subcategory_name_en','ASC')->get();
     	return json_encode($subcat);
    }

    public function GetSubSubCategory($subcategory_id){

        $subsubcat = SubSubCategory::where('subcategory_id',$subcategory_id)->orderBy('subsubcategory_name_en','ASC')->get();
        return json_encode($subsubcat);
     }


    public function SubSubcategoryStore(Request $request)
    {

        $request->validate([
            'category_id' =>'required',
            'subcategory_id' =>'required',
            'SubSubcategory_name_en' =>'required',
            'SubSubcategory_name_hin' =>'required',
        ],[
            'category_id.required' =>'Input subcategory English Name',
            'subcategory_id.required' =>'Input sub category English Name',
            'SubSubcategory_name_en.required' =>'Input SubSubcategory english Name', 
            'SubSubcategory_name_hin.required' =>'Input SubSubcategory  Hindi Name', 
        ]);

        SubSubCategory::insert([
            'category_id'=>$request->category_id,
            'subcategory_id'=>$request->subcategory_id,
            'SubSubcategory_name_en'=>$request->SubSubcategory_name_en,
            'SubSubcategory_name_hin'=>$request->SubSubcategory_name_hin,
            'SubSubcategory_slug_en'=>strtolower(str_replace('','-',$request->SubSubcategory_name_en)),
            'SubSubcategory_slug_hin'=>str_replace(' ','-',$request->SubSubcategory_name_hin),
        ]);

        $notification = array(
            'message'=>'category insert successfully',
            'alert-type'=>'success',
        );
        return redirect()->back()->with($notification);
    }

    public function SubSubcategoryEdit($id)
    {
        $category = Category::orderBy('category_name_en','ASC')->get();
        $subcategories = SubCategory::orderBy('subcategory_name_en','ASC')->get();    
        $SubSubcategory = SubSubCategory::findOrFail($id);        
        return view('backend.category.sub_subcategory_edit',compact('SubSubcategory','category','subcategories'));      
    }

    public function SubSubcategoryUpdate(Request $request)
    {
        $cat_id = $request->id;

        
        SubSubCategory::find($cat_id)->update([
            'category_id'=>$request->category_id,
            'subcategory_id'=>$request->subcategory_id,
            'SubSubcategory_name_en'=>$request->SubSubcategory_name_en,
            'SubSubcategory_name_hin'=>$request->SubSubcategory_name_hin,
        ]);

        $notification = array(
            'message'=>'category update successfully',
            'alert-type'=>'success',
        );
        return redirect()->route('all.SubSubcategory')->with($notification);
    }

    public function SubSubcategoryDelete($id)
    {
        SubSubCategory::findOrFail($id)->delete();

        $notification = array(
            'message'=>'Category delete successfully',
            'alert-type'=>'warning',
        );
        return redirect()->route('all.SubSubcategory')->with($notification);
    } 
    
}
