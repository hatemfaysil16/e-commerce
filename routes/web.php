<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\frontend\IndexController;
use App\Http\Controllers\Backend\AdminProfileController;
use App\Http\Controllers\Backend\BrandController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\SubcategoryController;


use App\Models\User;
use Illuminate\Support\Facades\Auth;
use PHPUnit\TextUI\XmlConfiguration\Group;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::group(['prefix'=> 'admin', 'middleware'=>['admin:admin']], function(){
	Route::get('/login', [AdminController::class, 'loginForm']);
	Route::post('/login',[AdminController::class, 'store'])->name('admin.login');
});



Route::middleware(['auth:admin'])->group(function () {
    

    Route::middleware(['auth:admin', 'verified'])->get('/admin/dashboard', function () {
        return view('admin.index');
    })->name('admin.dashboard');

    Route::get('/admin/profile', [AdminProfileController::class, 'AdminProfile'])->name('admin.profile');

    Route::get('/admin/logout', [AdminController::class, 'destroy'])->name('admin.logout');

    Route::get('/admin/logout', [AdminController::class, 'destroy'])->name('admin.logout');

    Route::get('/admin/profile/edit', [AdminProfileController::class, 'AdminProfileEdit'])->name('admin.profile.edit');

    Route::post('/admin/profile/store', [AdminProfileController::class, 'AdminProfileStore'])->name('admin.profile.store');

    Route::get('/admin/change/password', [AdminProfileController::class, 'AdminChangePassword'])->name('admin.change.password');

    Route::post('/update/change/password', [AdminProfileController::class, 'AdminUpdateChangePassword'])->name('update.change.password');


});


Route::middleware(['auth:sanctum,web', 'verified'])->get('/dashboard', function () {
    $id = Auth::user()->id;
    $user = User::find($id);
    return view('dashboard',compact('user'));
})->name('dashboard');


Route::get('/', [IndexController::class, 'index']);
Route::get('/user/logout', [IndexController::class, 'UserLogout'])->name('user.logout');


Route::get('/user/profile', [IndexController::class, 'UserProfile'])->name('user.profile');

Route::post('/user/profile/store', [IndexController::class, 'UserProfileStore'])->name('user.profile.store');

Route::get('/user/change/password', [IndexController::class, 'UserChangePassword'])->name('change.password');

Route::post('/user/password/update', [IndexController::class, 'UserPasswordUpdate'])->name('user.password.update');



//Admin brand All Routes 
Route::group(['prefix'=> 'brand', 'middleware'=>['auth:admin']], function(){
    Route::get('/view', [BrandController::class, 'BrandView'])->name('all.brand');

    Route::post('/store', [BrandController::class, 'BrandStore'])->name('brand.store');

    Route::get('/edit/{id}', [BrandController::class, 'BrandEdit'])->name('brand.edit');

    Route::post('/update', [BrandController::class, 'BrandUpdate'])->name('brand.update');

    Route::get('/delete/{id}', [BrandController::class, 'BrandDelete'])->name('brand.delete');
});


//Admin Category All Routes 

Route::group(['prefix'=> 'category', 'middleware'=>['auth:admin']], function(){

    Route::get('/view', [CategoryController::class, 'categoryView'])->name('all.category');

    Route::post('/store', [CategoryController::class, 'categoryStore'])->name('category.store');

    Route::get('/edit/{id}', [CategoryController::class, 'categoryEdit'])->name('category.edit');

    Route::post('/updates', [CategoryController::class, 'categoryUpdate'])->name('category.update');

    Route::get('/delete/{id}', [CategoryController::class, 'categoryDelete'])->name('category.delete');

//Admin Sub Category All Routes 

    Route::get('/sub/view', [SubcategoryController::class, 'SubcategoryView'])->name('all.subcategory');

    Route::post('/sub/store', [SubcategoryController::class, 'subcategoryStore'])->name('subcategory.store');

    Route::get('/sub/edit/{id}', [SubcategoryController::class, 'subcategoryEdit'])->name('subcategory.edit');

    Route::post('/sub/updates', [SubcategoryController::class, 'subcategoryUpdate'])->name('subcategory.update');

    Route::get('/sub/delete/{id}', [SubcategoryController::class, 'subcategoryDelete'])->name('subcategory.delete');


//Admin Sub->Sub Category All Routes 

    Route::get('/sub/sub/view', [SubcategoryController::class, 'SubSubcategoryView'])->name('all.SubSubcategory');

    Route::get('/subcategory/ajax/{category_id}', [SubCategoryController::class, 'GetSubCategory']);

    Route::post('/sub/sub/store', [SubcategoryController::class, 'SubSubcategoryStore'])->name('SubSubcategory.store');

    Route::get('/sub/sub/edit/{id}', [SubcategoryController::class,'SubSubcategoryEdit'])->name('SubSubcategory.edit');

    Route::post('/sub/sub/updates', [SubcategoryController::class, 'SubSubcategoryUpdate'])->name('SubSubcategory.update');

    Route::get('sub/sub/delete/{id}', [SubcategoryController::class, 'SubSubcategoryDelete'])->name('SubSubcategory.delete');

});