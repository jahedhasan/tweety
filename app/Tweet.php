<?php

namespace App;

use App\Like;
use App\User;
use Illuminate\Database\Eloquent\Model;

class Tweet extends Model
{
    protected $guarded = [];

    public function user(){
      return $this->belongsTo(User::class);
    }

    public function like($user = null ,$liked = true)
    {
      $this->likes()->updateOrCreate([
        'user_id' => $user ? $user->id : auth()->id(),
      ],
      [
        'liked' => $liked,
      ]);
    }

    public function dislike($user =null)
    {
      return $this->like($user , false);   
    }

    public function isLikedBy(User $user)
    {
      return (bool) $user->likes
              ->where('tweet_id' , $this->id)
              ->where('liked', true)
              ->count();
    }

    public function isDislikedBy(User $user)
    {
      return (bool) $user->likes
              ->where('tweet_id' , $this->id)
              ->where('liked', false)
              ->count();
    }

    public function likes()
    {
      return $this->hasMany(Like::class);
    }
}
