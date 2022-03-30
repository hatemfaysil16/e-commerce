<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Category;
use App\Models\MultiImg;
use App\Models\Product;
use App\Models\Slider;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;

class IndexController extends Controller
{
    public function index()
    {
        $products = Product::where('status',1)->orderBy('id','DESC')->limit(6)->get();
        $sliders = Slider::where('status',1)->orderBy('id','DESC')->limit(3)->get();
        $categories = Category::orderBy('category_name_en','ASC')->get();
        return view('frontend.index',compact('sliders','categories','products'));
    }

    public function UserLogout()
    {
        Auth::logout();
        return Redirect()->route('login');
    }

    public function UserProfile()
    {
        $id = Auth::user()->id;
        $user = User::find($id);
        return view('frontend.profile.user_profile',compact('user'));
    }

    public function UserProfileStore(Request $request)
    {
        $data = User::find(Auth::user()->id);
        $data->name = $request->name;
        $data->email = $request->email;
        $data->phone = $request->phone;


        if($request->file('profile_photo_path')){
            $file = $request->file('profile_photo_path');
            $filename = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/user_images'),$filename);
            $data['profile_photo_path'] = $filename;
        }
        $data->save();

        $notification = array(
            'message'=>'User profile Updated successfully',
            'alert-type'=>'success'
        );
        return redirect()->route('dashboard')->with($notification);
    }

    public function UserChangePassword()
    {
        $id = Auth::user()->id;
        $user = User::find($id);
        return view('frontend.profile.change_password',compact('user'));
    }

    public function UserPasswordUpdate(Request $request)
    {

        $hashedPassword = Auth::user()->password;
        if(Hash::check($request->oldpassword,$hashedPassword)){
            $user = User::find(Auth::id());
            $a = $user->password = Hash::make($request->password);
            $user->save();
            Auth::logout();

            return redirect()->route('user.logout');
        }else{
            return redirect()->back();
        }
    }

    public function ProductDetails($id,$slug){
		$product = Product::findOrFail($id);
        $multiImage = MultiImg::where('product_id',$id)->get();
        return view('frontend.product.product_details',compact('product','multiImage'));
	}


	public function TagWiseProduct($tag){
		$products = Product::where('status',1)->where('product_tags_en',$tag)->where('product_tags_hin',$tag)->orderBy('id','DESC')->paginate(3);
        // return $products;die;
		$categories = Category::orderBy('category_name_en','ASC')->get();
		return view('frontend.tags.tags_view',compact('products','categories'));

	}



}

