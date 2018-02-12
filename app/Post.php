<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    // you can change the Table Name
    protected $table = 'posts';

    //you can change the Primary Key
    public $primaryKey = 'id';

    //TimeStamps
    public $timestamps = true;

    public function user(){
        return $this->belongsTo('App\User');
    }
}
