<?php

namespace App\Imports;

use App\Models\Order;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

use Maatwebsite\Excel\Concerns\ToCollection;

class OrderImport implements ToModel, WithStartRow
{
  


    public function startRow(): int
    {
        return 2;
    }
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        return $row;
        return new Order([
            'product_id' =>$row[1],
            'order_no' => $row[2],
            'quantity' => $row[3] ?? '2',
            'buyer_name' => $row[4] ?? 'p',
            'sale_price' => $row[5] ?? '32',
            'date' => $row[6]

        ]);
    }
}
