@extends('layouts.app')

@section('content')
   <div class="container" style="margin-top: 70px">
      @if($transaksi->method == 'transfer')
         <div class="box" style="margin-right: 100px">
            <form action="{{route('success_transfer')}}" method="post" enctype="multipart/form-data">
            {{csrf_field()}}
               <input type="hidden" name="id_transaksi" id="id_transaksi" value="{{$transaksi->id_transaksi}}">
               <input type="hidden" name="id_user" id="id_user" value="{{Auth::user()->id}}">
               <div class="form-group">
                  <label for="bank">Bank *</label>
                  <select class="form-control"  name="bank" id="bank">
                     <option value="bni">BNI</option>
                     <option value="bri">BRI</option>
                     <option value="bca">BCA</option>
                  </select>
               </div>
               <div class="form-group">
                  <label for="nomor_rekening">Nomor Rekening *</label>
                  <input type="text" class="form-control"  name="nomor_rekening" id="nomor_rekening">
               </div>
               <div class="form-group">
                  <label for="bukti_pembayaran">Bukti Pembayaran *</label>
                  <input type="file" class="form-control"  name="bukti_pembayaran" id="bukti_pembayaran">
               </div>
               <div class="form-group">
                  <label for="atas_nama">Atas Nama *</label>
                  <input type="text" class="form-control"  name="atas_nama" id="atas_nama">
               </div>
            <button type="submit" class="btn btn-primary">Konfirmasi</button>
            </form>
         </div>
      @else
         <form action="{{route('success_kredit')}}" method="post" enctype="multipart/form-data">
         {{csrf_field()}}
            <input type="hidden" name="id_transaksi" id="id_transaksi" value="{{$transaksi->id_transaksi}}">
            <input type="hidden" name="id_user" id="id_user" value="{{Auth::user()->id}}">
            <div class="form-group">
               <label for="no_kartu_kredit">Nomor Kartu Kredit *</label>
               <input type="text" class="form-control"  name="no_kartu_kredit" id="no_kartu_kredit">
            </div>
            <div class="form-group">
               <label for="atas_nama">Atas Nama *</label>
               <input type="text" class="form-control"  name="atas_nama" id="atas_nama">
            </div>
            <button type="submit" class="btn btn-primary">Konfirmasi</button>
         </form>
      @endif

      <div>
         <strong><em>Batas Pembayaran Anda adalah sampai : {{$book->batas_transaksi}}</em></strong>
      </div>
      <div>
         <em>* Wajib di isi</em>
      </div>
   </div>   
@endsection