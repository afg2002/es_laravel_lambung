<?php

namespace Database\Seeders;

use App\Models\Pertanyaan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PertanyaanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run() : void
    {
        $data = [
            
            [
                'kode_pertanyaan' => 'T01',
                'urutan' => 1,
                'pertanyaan' => 'Apa saja gejala umum (symptom) pasien?',
                'pilihan_jawaban' => 'G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11',
            ],
            [
                'kode_pertanyaan' => 'T02',
                'urutan' => 2,
                'pertanyaan' => 'Bagaimana hasil pemeriksaan selanjutnya?',
                'pilihan_jawaban' => 'K01',
            ],
            [
                'kode_pertanyaan' => 'T03',
                'urutan' => 3,
                'pertanyaan' => 'Bagaimana hasil uji laboratorium?',
                'pilihan_jawaban' => 'L01',
            ],
        ];

        Pertanyaan::insert($data);
    }
}
