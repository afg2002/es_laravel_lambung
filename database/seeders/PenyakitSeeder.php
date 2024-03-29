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
                'kode_penyakit' => 'P01',
                'nama_penyakit' => 'Maag',
                'deskripsi' => 'Maag adalah kondisi yang melibatkan peradangan pada dinding lambung atau luka pada lambung.',
            ],
            [
                'kode_penyakit' => 'P02',
                'nama_penyakit' => 'Dispepsia',
                'deskripsi' => 'Dispepsia adalah gangguan pencernaan yang sering kali menimbulkan rasa tidak nyaman di perut atas.',
            ],
            [
                'kode_penyakit' => 'P03',
                'nama_penyakit' => 'Kanker Lambung',
                'deskripsi' => 'Kanker lambung adalah pertumbuhan sel-sel ganas yang tidak terkontrol pada lapisan dalam lambung.',
            ],
            [
                'kode_penyakit' => 'P04',
                'nama_penyakit' => 'Gastroparesis',
                'deskripsi' => 'Gastroparesis adalah kondisi dimana lambung tidak dapat bergerak mendorong makanan ke usus kecil.',
            ],
            [
                'kode_penyakit' => 'P05',
                'nama_penyakit' => 'Tukak Lambung',
                'deskripsi' => 'Tukak lambung adalah luka atau erosi pada lapisan dalam lambung, usus halus bagian atas, atau esofagus bagian atas.',
            ],
            [
                'kode_penyakit' => 'P06',
                'nama_penyakit' => 'Gastroteritis',
                'deskripsi' => 'Infeksi usus ditandai dengan diare, kram, mual, muntah, dan demam. Flu perut biasanya menyebar melalui kontak dengan orang yang terinfeksi atau melalui makanan atau air yang terkontaminasi. Diare, kram, mual, muntah, dan demam ringan adalah gejala yang umum terjadi. Menghindari makanan dan air yang terkontaminasi serta sering mencuci tangan dapat membantu mencegah infeksi. Istirahat dan rehidrasi adalah penanganan utama.',
            ],

        ];

        Penyakit::insert($penyakit);
    }
}
