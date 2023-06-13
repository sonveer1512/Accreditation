<?php

namespace App\Models;
use Illuminate\Notifications\Notifiable;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Scopes\FlagScope;
use App\Notifications\AssignedLead;

class User extends Model
{
    use HasFactory;
    use Notifiable;


    protected static function boot()
    {
        parent::boot();

        return static::addGlobalScope(new FlagScope);
    }
    public function getRoleAttribute($value){
        return ucfirst($value);
    }


}
