

<tr>
    <td class="highlight">
        <div class="success"></div>
        <a href="javascript:;"> {{ $product->name }} </a>
    </td>
    <td class="hidden-xs"> 
        @php
            echo number_format($product->weight * $product->count, 2, '.', '');
            if ($product->weight_type == 1)
                echo " liter";
            else
            if ($product->weight_type == 2)
                echo " kg.";
            else
                echo " gr.";
        @endphp </td>
    <td> 
        @php
        if ($product->sale == 1){
            echo number_format($product->sale_price * $product->count, 2, '.', '');
        }
        else{
            echo number_format($product->price * $product->count, 2, '.', '');
        }  
        @endphp </td>
    <td>
        <a href="javascript:;" class="btn btn-outline btn-circle btn-sm purple">
            <i class="fa fa-edit"></i> Edit </a>
    </td>
</tr>