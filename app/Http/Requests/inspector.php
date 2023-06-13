<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class inspector extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        if(request()->routeIs('inspectors.update')){
            $code = 'required|unique:users,ce_code,'.$this->segment(3); 
            $email = 'required|email|unique:users,email,'.$this->segment(3); 
            $password='';
        }else{
            $code  = 'required|unique:users';
            $email  = 'required|email|unique:users';
            $password = 'required';

        }
      
        return [
            'ce_code'=>$code,
            'name'=>'required',
            'email'=>$email,
            'password'=>$password
        ];
    }
}
