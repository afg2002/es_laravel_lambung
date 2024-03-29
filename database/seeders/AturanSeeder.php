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
            ['kode_penyakit' => 'P01', 'kode_gejala' => 'G01,G02,G03,G05',],
            ['kode_penyakit' => 'P02', 'kode_gejala' => 'G03,G05,G15,G17',],
            ['kode_penyakit' => 'P03', 'kode_gejala' => 'G05,G06,G07,G14',],
            ['kode_penyakit' => 'P04', 'kode_gejala' => 'G05,G06,G07,G08,G09',],
            ['kode_penyakit' => 'P05', 'kode_gejala' => 'G05,G11,G12',],
            ['kode_penyakit' => 'P06', 'kode_gejala' => 'G01,G02,G03,G04,G05,G13',],
        ];

        foreach ($data as $item) {
            $gejalaArr = explode(',', $item['kode_gejala']);
            sort($gejalaArr);
            $gejalaStr = implode(',', $gejalaArr);


            Aturan::create([
                'kode_penyakit' => $item['kode_penyakit'],
                'kode_gejala' => $gejalaStr,
            ]);
        }
    }
}
