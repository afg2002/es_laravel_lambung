<?php

namespace Database\Seeders;

use App\Models\Aturan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AturanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['kode_penyakit' => 'P1', 'kode_gejala' => 'G01,G02,G03', 'hasil_lab' => '', 'kode_gejalaPD' => ''],
            ['kode_penyakit' => 'P1', 'kode_gejala' => 'G01,G02,G03', 'hasil_lab' => '', 'kode_gejalaPD' => ''],
        ];

        foreach ($data as $item) {
            $gejalaArr = explode(',', $item['kode_gejala']);
            sort($gejalaArr);
            $gejalaStr = implode(',', $gejalaArr);

            $labArr = explode(',', $item['hasil_lab']);
            sort($labArr);
            $labStr = implode(',', $labArr);

            $pdArr = explode(',', $item['kode_gejalaPD']);
            sort($pdArr);
            $pdStr = implode(',', $pdArr);

            Aturan::create([
                'kode_penyakit' => $item['kode_penyakit'],
                'kode_gejala' => $gejalaStr,
                'hasil_lab' => $labStr,
                'kode_gejalaPD' => $pdStr,
            ]);
        }
    }
}
