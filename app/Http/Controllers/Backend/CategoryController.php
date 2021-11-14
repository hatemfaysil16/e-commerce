<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function categoryView()
    {
        $category = Category::latest()->get();
        return view('backend.category.category_view',compact('category'));
    }

    public function categoryStore(Request $request)
    {
        $request->validate([
            'category_name_en' =>'required',
            'category_name_hin' =>'required',
            'category_icon' =>'required',
        ],[
            'category_name_en.required' =>'Input category English Name',
            'category_name_hin.required' =>'Input category Hindi Name', 
            'category_icon.required' =>'Input category icon Hindi Name', 
        ]);

        Category::insert([
            'category_name_en'=>$request->category_name_en,
            'category_name_hin'=>$request->category_name_hin,
            'category_slug_en'=>strtolower(str_replace('','-',$request->category_name_en)),
            'category_slug_hin'=>str_replace('','-',$request->category_name_hin),
            'category_icon'=>$request->category_icon,
        ]);

        $notification = array(
            'message'=>'category insert successfully',
            'alert-type'=>'success',
        );
        return redirect()->back()->with($notification);
    }

    public function categoryEdit($id)
    {
        $category = Category::findOrFail($id);
        return view('backend.category.category_edit',compact('category'));
    }

    public function categoryUpdate(Request $request)
    {

        $cat_id = $request->id;

        Category::find($cat_id)->update([
            'category_name_en'=>$request->category_name_en,
            'category_name_hin'=>$request->category_name_hin,
            'category_slug_en'=>strtolower(str_replace('','-',$request->category_name_en)),
            'category_slug_hin'=>str_replace('','-',$request->category_name_hin),
            'category_icon'=>$request->category_icon,
        ]);

        $notification = array(
            'message'=>'category update successfully',
            'alert-type'=>'success',
        );
        return redirect()->route('all.category')->with($notification);
    }
   
    public function categoryDelete($id)
    {

        $Category = Category::findOrFail($id);

        Category::findOrFail($id)->delete();

        $notification = array(
            'message'=>'Category delete successfully',
            'alert-type'=>'warning',
        );
        return redirect()->route('all.category')->with($notification);
    }  
    
}
