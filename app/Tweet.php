<?php

namespace App;

// use App\Like;
// use App\User;
 use App\Likable;
use Illuminate\Database\Eloquent\Model;

class Tweet extends Model
{
    use Likable;

    protected $guarded = [];

    public function user(){
      return $this->belongsTo(User::class);
    }
}


