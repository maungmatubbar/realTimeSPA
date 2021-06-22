<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use App\User;
class Question extends Model
{
    public function user(){
        return belongsTo(User::class);
    }
    public function replies(){
        return $this->hasMany(Reply::class);
    }
    public function category(){
        return $this->belongsTo(Category::class);
    }
}