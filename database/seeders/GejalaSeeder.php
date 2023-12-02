<?php

namespace Database\Seeders;

use App\Models\Gejala;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class GejalaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $gejala = [
            [
                'kode_gejala' => 'G01',
                'nama_gejala' => 'Mual dan Muntah',
                'deskripsi' => 'Seseorang mengalami sensasi ingin muntah atau muntah.',
            ],
            [
                'kode_gejala' => 'G02',
                'nama_gejala' => 'Nafsu Makan Berkurang',
                'deskripsi' => 'Kurangnya keinginan untuk makan atau nafsu makan yang menurun.',
            ],
            [
                'kode_gejala' => 'G03',
                'nama_gejala' => 'Perut Sakit',
                'deskripsi' => 'Seseorang mengalami nyeri pada perut.',
            ],
            [
                'kode_gejala' => 'G04',
                'nama_gejala' => 'Perut Kembung',
                'deskripsi' => 'Pembesaran atau distensi pada perut.',
            ],
            [
                'kode_gejala' => 'G05',
                'nama_gejala' => 'Nyeri Ulu Hati',
                'deskripsi' => 'Seseorang merasakan nyeri pada bagian atas perut atau ulu hati.',
            ],
            [
                'kode_gejala' => 'G06',
                'nama_gejala' => 'Panas di Dada',
                'deskripsi' => 'Seseorang mengalami sensasi panas pada dada.',
            ],
            [
                'kode_gejala' => 'G07',
                'nama_gejala' => 'Muntah Darah',
                'deskripsi' => 'Keluarnya darah dari mulut ketika muntah.',
            ],
            [
                'kode_gejala' => 'G08',
                'nama_gejala' => 'Sendawa',
                'deskripsi' => 'Keluar angin dari lambung melalui mulut.',
            ],
            [
                'kode_gejala' => 'G09',
                'nama_gejala' => 'Berat Badan Turun',
                'deskripsi' => 'Penurunan berat badan secara signifikan tanpa alasan yang jelas.',
            ],
            
            [
                'kode_gejala' => 'G10',
                'nama_gejala' => 'Lemah Letih Lesu',
                'deskripsi' => 'Seseorang merasa lemah, letih, atau lesu secara terus-menerus.',
            ],
            [
                'kode_gejala' => 'G11',
                'nama_gejala' => 'Sesak Nafas',
                'deskripsi' => 'Kesulitan bernapas atau perasaan sesak di dada.',
            ],
            [
                'kode_gejala' => 'K01',
                'nama_gejala' => 'Sakit pada Tukak Lambung',
                'deskripsi' => 'Rasa sakit yang terlokalisasi pada daerah tukak lambung.',
            ],
            $hasilLab = [
                'kode_gejala' => 'L01',
                'nama_gejala' => 'Kotoran Hitam/Berdarah',
                'deskripsi' => 'Terjadi perubahan warna pada kotoran menjadi hitam atau terdapat darah pada kotoran.',
            ],
        ];


        Gejala::insert($gejala);
    }
}
