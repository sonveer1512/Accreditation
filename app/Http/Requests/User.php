<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class User extends FormRequest
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
        if(request()->routeIs('users.update')){
            $email = 'required|email|unique:users,email,'.$this->segment(3);
            $password = '';
        }else{
            $email  = 'required|email|unique:users';
            $password = 'required';


        }
        return [
            'id_proof' => 'sometimes |image|mimes:jpeg,png',
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'password' => $password,
            'email' => $email,

        ];

    }
    public function messages()
    {
        return[
            'team_id.required' => 'Assign  Team first'
        ];
    }
}
