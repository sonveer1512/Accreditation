<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductValidate extends FormRequest
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
        return [
            'sku' => 'required|unique:products',
            'category' => 'required',
            'moq' => 'required',
            'quantity' => 'required',
            'bom_sku' => 'required',
            'bom_quantity' => 'required',
            'process_id' => 'required',
            'image' => 'sometimes |image|mimes:jpeg,png'

        ];
    }
    public function messages()
    {
        return [
            'process_id.required' => 'Processs is required',
        ];
    }
}
