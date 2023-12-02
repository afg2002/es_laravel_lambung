<?php

namespace Database\Seeders;

use App\Models\Penyakit;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PenyakitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $penyakit = [
            [
                'kode_penyakit' => 'P1',
                'nama_penyakit' => 'Maag',
                'deskripsi' => 'Maag adalah kondisi yang melibatkan peradangan pada dinding lambung atau luka pada lambung.',
            ],
            [
                'kode_penyakit' => 'P2',
                'nama_penyakit' => 'Dispepsia',
                'deskripsi' => 'Dispepsia adalah gangguan pencernaan yang sering kali menimbulkan rasa tidak nyaman di perut atas.',
            ],
            [
                'kode_penyakit' => 'P3',
                'nama_penyakit' => 'Kanker Lambung',
                'deskripsi' => 'Kanker lambung adalah pertumbuhan sel-sel ganas yang tidak terkontrol pada lapisan dalam lambung.',
            ],
            [
                'kode_penyakit' => 'P4',
                'nama_penyakit' => 'Gastroparesis',
                'deskripsi' => 'Gastroparesis adalah kondisi dimana lambung tidak dapat bergerak mendorong makanan ke usus kecil.',
            ],
            [
                'kode_penyakit' => 'P5',
                'nama_penyakit' => 'Tukak Lambung',
                'deskripsi' => 'Tukak lambung adalah luka atau erosi pada lapisan dalam lambung, usus halus bagian atas, atau esofagus bagian atas.',
            ],
        ];

        Penyakit::insert($penyakit);
    }
}
