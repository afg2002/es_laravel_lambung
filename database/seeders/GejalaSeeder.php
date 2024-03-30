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
                'nama_gejala' => 'Sakit Pada Tukak Lambung',
                'deskripsi' => ' luka atau ulkus pada lambung yang menyebabkan penderitanya mengalami keluhan seperti perut kembung, nyeri ulu hati, dan mual.',
            ],
              [
                'kode_gejala' => 'G12',
                'nama_gejala' => 'Sesak Napas',
                'deskripsi' => 'Kesulitan bernapas atau merasa napas tidak cukup.\nNapas terasa pendek dan cepat.\nDada terasa sesak atau tertekan.\nBatuk kering atau berdahak.',
              ],
              [
                'kode_gejala' => 'G13',
                'nama_gejala' => 'Kejang Perut',
                'deskripsi' => 'Kontraksi otot perut yang kuat dan tidak nyaman.\nNyeri perut yang tajam dan kram.\nBisa disertai dengan mual, muntah, atau diare.',
              ],
              [
                'kode_gejala' => 'G14',
                'nama_gejala' => 'Sembelit',
                'deskripsi' => 'Kesulitan buang air besar.\nFeses keras dan kering.\nPerut kembung dan tidak nyaman.\nHarus mengejan keras saat buang air besar.',
              ],
              [
                'kode_gejala' => 'G15',
                'nama_gejala' => 'Perubahan Suhu Tubuh dan Keringat Dingin',
                'deskripsi' => 'Demam (suhu tubuh lebih tinggi dari 38°C) atau kedinginan (suhu tubuh lebih rendah dari 36°C).\nBerkeringat dingin, terutama di malam hari.\nMenggigil.',
              ],
              [
                'kode_gejala' => 'G16',
                'nama_gejala' => 'Perasaan Kenyang Berlebihan',
                'deskripsi' => 'Merasa cepat kenyang setelah makan sedikit.\nTidak nafsu makan.\nMual atau muntah setelah makan.\nPerut terasa penuh dan tidak nyaman.',
              ],
        ];


        Gejala::insert($gejala);
    }
}
