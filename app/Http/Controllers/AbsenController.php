<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Absensi;
use Carbon\Carbon;

class AbsenController extends Controller
{
  public function store(Request $request){
     $absen = new Absensi();
     $absen->bp = $request->bp;
     $absen->nama = $request->nama;
     $absen->kelas = $request->kelas;
     $absen->mata_kuliah = $request->mata_kuliah;
     $date = Carbon::now();

     $c = $date->format('y-M-d h-i-s');

     $result = array("success" => $_FILES["file"]["name"]);
      $file_path = basename( $_FILES['file']['name']);
      $path = public_path('image/' .$c." ".$file_path);

      if(move_uploaded_file($_FILES['file']['tmp_name'], $path)) {
          $result = array("success" => "File successfully uploaded");
      } else{
          $result = array("success" => "error uploading file");
      }

     $absen->foto = $c." ".$file_path;
     $absen->save();
     $id = Absensi::max('id');

     $absenMasuk = Absensi::find($id);

     return response()->json($absenMasuk);
  }

  public function updateStatus(Request $request){
  		$data = Absensi::where('id', $request->id)->first();
  		if($data->status == 1){
        $data->status = 0;
        $data->save();

        return response()->json([
          'status' => 'success',
          'data' => $data->status
        ]);

      }else{
        $data->status = 1;
        $data->save();

        return response()->json([
          'status' => 'success',
          'data' => $data->status
        ]);

      }
	}
}
