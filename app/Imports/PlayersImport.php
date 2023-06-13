<?php

namespace App\Imports;

use App\Models\Candidate;
use Maatwebsite\Excel\Concerns\ToModel;

class PlayersImport implements ToModel
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
        return new Candidate([
            'uid'     => $row['uid'],
            'first_name'    => $row['first_name'],
            'dob'    => $row['dob'],
            'gender'    => $row['gender'],
            'father_name'    => $row['father_name'],
            'state'    => $row['state'],
            'sport'    => $row['sport'],
            'event_name'    => $row['event'],
            'category_name'    => $row['category']
        ]);
    }
}
