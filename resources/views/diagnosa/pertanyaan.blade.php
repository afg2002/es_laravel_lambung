@extends('template')

@section('title')
    Diagnosa | Aplikasi Sistem Pakar Diagnosa Penyakit DBD dan Thypoid
@endsection

@section('pageHeading')
    Diagnosa Penyakit 
@endsection

@section('content')
    
    <div class="mb-5">
        Ini adalah pertanyaan ke {{$urutan}} dari {{$totalPertanyaan}}
    </div>
    

    <form action="{{ route('diagnosa.handleResponse', ['urutan' => $urutan]) }}" method="post">

        @csrf

        @if ($urutan != 1)
        <button type="submit" name="action" value="previous" class="btn btn-primary">Previous</button>
        @endif

        @if ($urutan == $totalPertanyaan)
            <button type="submit" name="action" value="finish" class="btn btn-primary">Finish</button>
        @else
            <button type="submit" name="action" value="next" class="btn btn-primary">Next</button>
        @endif

        <div class="card mt-3">
            <div class="card-body">
                <h4 class="card-title">{{$pertanyaan->pertanyaan}}</h4>
            </div>
        </div>

        @php
    $dataQA = session()->get('dataQA.QA'.$urutan);
    $getQA = null;
    if ($dataQA && is_array($dataQA) && isset($dataQA)) {
        $getQA = $dataQA;
    }
@endphp


@foreach($gejala as $item)
    <div class="card mb-3 mt-2">
        <div class="card-body">
            <h5 class="card-title">{{ $item->nama_gejala }}&nbsp;<span style="color:red">*</span></h5>
            
            <hr class="my-2"> <!-- Add this line for the separator -->
            <div class="form-check">
                <input class="form-check-input" type="radio" name="gejala_{{ $item->kode_gejala }}" id="ya_{{ $item->kode_gejala }}" value="ya" 
                @if ($getQA && $getQA["gejala_".$item->kode_gejala] == 'ya')
                    checked
                @endif
                >
                <label class="form-check-label" for="ya_{{ $item->kode_gejala }}">
                    Ya
                </label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="radio" name="gejala_{{ $item->kode_gejala }}" id="tidak_{{ $item->kode_gejala }}" value="tidak" 
                @if ($getQA && $getQA["gejala_".$item->kode_gejala] == 'tidak')
                    checked
                @endif
                >
                <label class="form-check-label" for="tidak_{{ $item->kode_gejala }}">
                    Tidak
                </label>
            </div>

            @error('gejala_' . $item->kode_gejala)
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
        </div>
    </div>
@endforeach

        
        @if ($urutan != 1)
        <button type="submit" name="action" value="previous" class="btn btn-primary">Previous</button>
        @endif

        @if ($urutan == $totalPertanyaan)
            <button type="submit" name="action" value="finish" class="btn btn-primary">Finish</button>
        @else
            <button type="submit" name="action" value="next" class="btn btn-primary">Next</button>
        @endif

    </form>
    
    
    
@endsection
