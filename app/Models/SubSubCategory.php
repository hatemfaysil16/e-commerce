<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubSubCategory extends Model
{
    use HasFactory;

    protected $fillable = [
        'category_id',
        'subcategory_id',
        'SubSubcategory_name_en',
        'SubSubcategory_name_hin',
        'SubSubcategory_slug_en',
        'SubSubcategory_slug_hin',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class,'category_id','id');
    }

    public function Subcategory()
    {
        return $this->belongsTo(Subcategory::class,'subcategory_id','id');
    }
}