<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Hóa đơn</title>

<style type="text/css">
    * {
        font-family: Verdana, Arial, sans-serif;
    }
    table{
        font-size: x-small;
    }
    tfoot tr td{
        font-weight: bold;
        font-size: x-small;
    }
    .gray {
        background-color: lightgray
    }
    .font{
      font-size: 15px;
    }
    .authority {
        /*text-align: center;*/
        float: right
    }
    .authority h5 {
        margin-top: -10px;
        color: green;
        /*text-align: center;*/
        margin-left: 35px;
    }
    .thanks p {
        color: green;;
        font-size: 16px;
        font-weight: normal;
        font-family: serif;
        margin-top: 20px;
    }
</style>

</head>
<body>

  <table width="100%" style="background: #F7F7F7; padding:0 20px 0 20px;">
    <tr>
        <td valign="top">
          <!-- {{-- <img src="" alt="" width="150"/> --}} -->
          <h2 style="color: green; font-size: 26px;"><strong>EasyShop</strong></h2>
        </td>
        <td align="right">
            <pre class="font" >
               EasyShop Head Office
               Email:support@Youngboycodon.com <br>
               Call: 03388005559 <br>
               71 Mỹ Đình, Nam Từ Liêm, Hà Nội:#4 <br>
              
            </pre>
        </td>
    </tr>

  </table>


  <table width="100%" style="background:white; padding:2px;"></table>

  <table width="100%" style="background: #F7F7F7; padding:0 5 0 5px;" class="font">
    <tr>
        <td>
          <p class="font" style="margin-left: 20px;">
           <strong>Tên:</strong> {{ $order->name }} <br>
           <strong>Email:</strong> {{ $order->email }} <br>
           <strong>SDT:</strong> {{ $order->phone }} <br>
            @php
            $div =  $order->division->division_name; 
            $dis =  $order->district->district_name;
            $state = $order->state->state_name; 
            @endphp
           <strong>Đia chỉ:</strong> {{ $order->adress }} / {{$div}} / {{ $dis }}/ {{ $state }}<br>
           <strong>Post Code:</strong> {{ $order->post_code }}
         </p>
        </td>
        <td>
          <p class="font">
            <h3><span style="color: green;">Hóa đơn:</span> #{{ $order->invoice_no }}</h3>
            Ngày đặt hàng: {{ $order->order_date }} <br>
            Ngày Gửi: {{ $order->delivered_date }} <br>
            Phương thức thanh toán : {{ $order->payment_method }} </span>
         </p>
        </td>
    </tr>
  </table>
  <br/>
<h3>Sản phẩm</h3>


  <table width="100%">
    <thead style="background-color: green; color:#FFFFFF;">
      <tr class="font">
        <th>Hình ảnh</th>
        <th>Tên sản phẩm</th>
        <th>Size</th>
        <th>Color</th>
        <th>Code</th>
        <th>Số lượng</th>
        <th>Nhà cung cấp</th>
        <th>Tổng </th>
      </tr>
    </thead>
    <tbody>

     @foreach($orderItem as $item)
      <tr class="font">
        <td align="center">
            <img src="{{ public_path($item->product->product_thambnail) }}" height="50px;" width="50px;" alt="">
        </td>
        <td align="center">{{ $item->product->product_name }}</td>
       
         @if($item->color == NULL)
         <td align="center"> ...</td>
         @else
          <td align="center"> {{ $item->color }}</td>
         @endif

         @if($item->size == NULL)
         <td align="center"> ...</td>
         @else
          <td align="center"> {{ $item->size }}</td>
         @endif
        <td align="center">{{ $item->product->product_code }}</td>
        <td align="center">{{ $item->qty }}</td>

         @if($item->vendor_id == NULL)
         <td align="center">Owner</td>
          @else
          <td align="center">{{ $item->product->vendor->name }}</td>
          @endif
        
        <td align="center">${{ $item->price }}</td>
      </tr>
      @endforeach
    </tbody>
  </table>
  <br>
  <table width="100%" style=" padding:0 10px 0 10px;">
    <tr>
        <td align="right" >
            <h2><span style="color: green;">Tổng:</span>${{ $order->amount }}</h2>
            <h2><span style="color: green;">Thanh toán:</span> ${{ $order->amount }}</h2>
            {{-- <h2><span style="color: green;">Full Payment PAID</h2> --}}
        </td>
    </tr>
  </table>
  <div class="thanks mt-3">
    <p>Cảm Ơn Vì Đã Mua Sản Phẩm..!!</p>
  </div>
  <div class="authority float-right mt-5">
      <p>-----------------------------------</p>
      <h5>Ký tên:</h5>
    </div>
</body>
</html>