<?php

namespace App\Http\Traits;

use Illuminate\Support\Facades\DB;

trait DataTrait
{

    public static function getData($model, $relation = '')
    {
        return ($relation === '') ?  $model::all() : $model::with($relation)->get();
    }
    public static function getConditionalData($model, $where, $value, $where1 = '', $value1 = '')
    {

        return ($where1 != '') ? $model::where($where, $value)->where($where1, $value1)->get() : $model::where($where, $value)->get();
    }


    public static function getDistinctData($team_id)
    {
        return $users = DB::table('users')
            ->selectRaw('count(*) as rolescount, role')
            ->where('team_id',  $team_id)
            ->groupBy('role')
            ->get();
    }
    public static function getRolesCount()
    {
        return $users = DB::table('users')
            ->selectRaw('count(*) as rolescount, role')
            ->where('role', '!=', 'admin')

            ->groupBy('role')
            ->get();
    }

    public function dataInsert($model, $insertedarray)
    {
        return  $model::insert($insertedarray);
    }
    public function leadsAssigned($model, $status, $qc = '')
    {
        $compare = ($qc == '') ? 'assigned_user' : $qc;
        return $model::with(['lead' => function ($q) use ($status) {
            return $q->where('status', $status);
        }])->where($compare, getlogindetail('id'))->orderby('id', 'desc')->get();
    }
    public function leadsAssigned1($model, $status, $qc = '')
    {
        $compare = ($qc == '') ? 'assigned_user' : $qc;
        return $model::with('lead')->where('status', $status)->where($compare, getlogindetail('id'))->orderby('id', 'desc')->get();
    }

    public function getCount($model, $where = '', $value = '')
    {
        return ($where === '') ? $model::count() : $model::where($where, $value)->get()->count();
    }

    public function inspectionchecked($login_id, $status, $assigned_table, $assigned_column)
    {

        return DB::table('leads as l')
            ->join('lead_assign_to_qcs as aucjs', 'aucjs.lead_id', '=', 'l.id')
            ->join("$assigned_table as fa", 'fa.lead_id', '=', 'l.id')
            ->join('users as u', 'aucjs.qc_id', '=', 'u.id')
            ->where("fa.$assigned_column", '=', $login_id)
            ->where('l.status', '=', $status)
            ->orderBy('l.id', 'desc')
            ->select('l.*', 'u.name')
            ->get();
    }
    public function pdreport()
    {
        return DB::table('leads as l')
            ->join('vahaan_details as vd', 'vd.lead_id', '=', 'l.id')
            ->where("vd.pd_id", getlogindetail('id'))
            ->orderBy('l.id', 'desc')
            ->select('l.*','vd.repair_amount','vd.pd_rfc','vd.pd_tcp','vd.pd_assign_date','vd.lead_id')
            ->get();
    }
    public function inspectionchecked1($login_id, $status, $assigned_table, $assigned_column)
    {

        return DB::table('leads as l')
            ->join('lead_assign_to_qcs as aucjs', 'aucjs.lead_id', '=', 'l.id')
            ->join("$assigned_table as fa", 'fa.lead_id', '=', 'l.id')
            ->join('users as u', 'aucjs.qc_id', '=', 'u.id')
            ->where("fa.$assigned_column", '=', $login_id)
            ->where('fa.status', '=', $status)
            ->orderBy('l.id', 'desc')
            ->select('l.*', 'u.name')
            ->get();
    }


    public function inspectionchecked2($status)
    {

        return DB::table('leads as l')
            ->join('lead_assign_to_qcs as aucjs', 'aucjs.lead_id', '=', 'l.id')
            ->join('users as u', 'aucjs.qc_id', '=', 'u.id')
            ->where('l.status', '=', $status)
            ->orderBy('l.id', 'desc')
            ->select('l.*', 'u.name')
            ->get();
    }
}
