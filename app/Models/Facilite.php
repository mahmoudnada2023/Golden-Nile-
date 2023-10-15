<?php

namespace App\Models;

use App\Http\Traits\FileUploadTrait;
use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

class Facilite extends Model
{
    use Translatable,FileUploadTrait;

    public $translatedAttributes =  ['title','description'];
    public $table = 'facilites';

    public $fillable = [
        'title',
        'description',
        'main_photo',
    ];

    protected $casts = [
        'id' => 'integer',
        'main_photo' => 'string'
    ];


    static function rules()
    {
        $langs = LaravelLocalization::getSupportedLanguagesKeys();
        foreach ($langs as $lang) {
            $rules[$lang . '.title'] = 'required|string|min:5|max:255';
            $rules[$lang . '.description'] = 'required|string|min:5|max:255';
        }
        $rules['main_photo'] = 'required|image|mimes:jpg,png,jpeg';
        $rules['photos'] = 'required|array';
        $rules['photos.*'] = 'required';
        return $rules;
    }

    public function getMainPhotoAttribute()
    {
        return asset('uploads/facilites/' . $this->attributes['main_photo']);
    }

    public function setMainPhotoAttribute($file)
    {
        $name = $this->upload($file, 'uploads/facilites/');
        $this->attributes['main_photo'] = $name;
    }

    public function photos(){
        return $this->hasMany(FacilitePhoto::class,'facilite_id');
    }
}
